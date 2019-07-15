/*
 * Copyright (c) 2012-2013,2015-2018, The Linux Foundation. All rights reserved.
 *
 * Redistribution and use in source and binary forms, with or without
 * modification, are permitted provided that the following conditions are
 * met:
 * *    * Redistributions of source code must retain the above copyright
 *       notice, this list of conditions and the following disclaimer.
 *     * Redistributions in binary form must reproduce the above
 *       copyright notice, this list of conditions and the following
 *       disclaimer in the documentation and/or other materials provided
 *       with the distribution.
 *     * Neither the name of The Linux Foundation nor the names of its
 *       contributors may be used to endorse or promote products derived
 *       from this software without specific prior written permission.
 *
 * THIS SOFTWARE IS PROVIDED "AS IS" AND ANY EXPRESS OR IMPLIED
 * WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF
 * MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NON-INFRINGEMENT
 * ARE DISCLAIMED.  IN NO EVENT SHALL THE COPYRIGHT OWNER OR CONTRIBUTORS
 * BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR
 * CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF
 * SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR
 * BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY,
 * WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE
 * OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN
 * IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
 */
#define LOG_NIDEBUG 0

#include <dlfcn.h>
#include <errno.h>
#include <fcntl.h>
#include <stdlib.h>
#include <string.h>
#include <unistd.h>

#include "power-common.h"
#include "utils.h"

#define LOG_TAG "QTI PowerHAL"
#include <log/log.h>

#define PERF_HAL_PATH "libqti-perfd-client.so"
static void* qcopt_handle;
static int (*perf_lock_acq)(unsigned long handle, int duration, int list[], int numArgs);
static int (*perf_lock_rel)(unsigned long handle);
static int (*perf_hint)(int, char*, int, int);

static void* get_qcopt_handle() {
    void* handle = NULL;

    dlerror();

    handle = dlopen(PERF_HAL_PATH, RTLD_NOW);
    if (!handle) {
        ALOGE("Unable to open %s: %s\n", PERF_HAL_PATH, dlerror());
    }

    return handle;
}

static void __attribute__((constructor)) initialize(void) {
    qcopt_handle = get_qcopt_handle();

    if (!qcopt_handle) {
        ALOGE("Failed to get qcopt handle.\n");
    } else {
        /*
         * qc-opt handle obtained. Get the perflock acquire/release
         * function pointers.
         */
        perf_lock_acq = dlsym(qcopt_handle, "perf_lock_acq");

        if (!perf_lock_acq) {
            ALOGE("Unable to get perf_lock_acq function handle.\n");
        }

        perf_lock_rel = dlsym(qcopt_handle, "perf_lock_rel");

        if (!perf_lock_rel) {
            ALOGE("Unable to get perf_lock_rel function handle.\n");
        }

        perf_hint = dlsym(qcopt_handle, "perf_hint");

        if (!perf_hint) {
            ALOGE("Unable to get perf_hint function handle.\n");
        }
    }
}

static void __attribute__((destructor)) cleanup(void) {
    if (qcopt_handle) {
        if (dlclose(qcopt_handle)) ALOGE("Error occurred while closing qc-opt library.");
    }
}

int sysfs_read(char* path, char* s, int num_bytes) {
    char buf[80];
    int count;
    int ret = 0;
    int fd = open(path, O_RDONLY);

    if (fd < 0) {
        strerror_r(errno, buf, sizeof(buf));
        ALOGE("Error opening %s: %s\n", path, buf);

        return -1;
    }

    if ((count = read(fd, s, num_bytes - 1)) < 0) {
        strerror_r(errno, buf, sizeof(buf));
        ALOGE("Error writing to %s: %s\n", path, buf);

        ret = -1;
    } else {
        s[count] = '\0';
    }

    close(fd);

    return ret;
}

int sysfs_write(char* path, char* s) {
    char buf[80];
    int len;
    int ret = 0;
    int fd = open(path, O_WRONLY);

    if (fd < 0) {
        strerror_r(errno, buf, sizeof(buf));
        ALOGE("Error opening %s: %s\n", path, buf);
        return -1;
    }

    len = write(fd, s, strlen(s));
    if (len < 0) {
        strerror_r(errno, buf, sizeof(buf));
        ALOGE("Error writing to %s: %s\n", path, buf);

        ret = -1;
    }

    close(fd);

    return ret;
}

void interaction(int duration, int num_args, int opt_list[]) {
    static int lock_handle = 0;

    if (duration < 0 || num_args < 1 || opt_list[0] == 0) return;

    if (qcopt_handle) {
        if (perf_lock_acq) {
            lock_handle = perf_lock_acq(lock_handle, duration, opt_list, num_args);
            if (lock_handle == -1) ALOGE("Failed to acquire lock.");
        }
    }
}

// this is interaction_with_handle using perf_hint instead of
// perf_lock_acq
int perf_hint_enable(int hint_id, int duration) {
    int lock_handle = 0;

    if (duration < 0) return 0;

    if (qcopt_handle) {
        if (perf_hint) {
            lock_handle = perf_hint(hint_id, NULL, duration, -1);
            if (lock_handle == -1) ALOGE("Failed to acquire lock for hint_id: %X.", hint_id);
        }
    }
    return lock_handle;
}

void release_request(int lock_handle) {
    if (qcopt_handle && perf_lock_rel) perf_lock_rel(lock_handle);
}
