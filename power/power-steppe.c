/*
 * Copyright (c) 2018, The Linux Foundation. All rights reserved.
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
#include <string.h>
#include <sys/stat.h>
#include <sys/types.h>
#include <unistd.h>

#define LOG_TAG "QTI PowerHAL"
#include <hardware/hardware.h>
#include <hardware/power.h>
#include <log/log.h>
#include <time.h>

#include "performance.h"
#include "power-common.h"
#include "utils.h"

const int kMaxInteractiveDuration = 5000; /* ms */
const int kMinInteractiveDuration = 100;  /* ms */
const int kMinFlingDuration = 1500;       /* ms */

static int process_activity_launch_hint(void* data __unused) {
    perf_hint_enable_with_type(VENDOR_HINT_LAUNCH_BOOST, -1, LAUNCH_BOOST_V1);
    return HINT_HANDLED;
}

static int process_interaction_hint(void* data) {
    struct timeval cur_boost_timeval = {0, 0};
    static unsigned long long previous_boost_time = 0;
    static unsigned long long previous_duration = 0;
    unsigned long long cur_boost_time;
    double elapsed_time;
    int duration = kMinInteractiveDuration;

    if (data) {
        int input_duration = *((int*)data);
        if (input_duration > duration) {
            duration = (input_duration > kMaxInteractiveDuration) ? kMaxInteractiveDuration
                                                                  : input_duration;
        }
    }

    gettimeofday(&cur_boost_timeval, NULL);
    cur_boost_time = cur_boost_timeval.tv_sec * 1000000 + cur_boost_timeval.tv_usec;
    elapsed_time = (double)(cur_boost_time - previous_boost_time);
    // don't hint if previous hint's duration covers this hint's duration
    if ((previous_duration * 1000) > (elapsed_time + duration * 1000)) {
        return HINT_HANDLED;
    }
    previous_boost_time = cur_boost_time;
    previous_duration = duration;

    if (duration >= kMinFlingDuration) {
        perf_hint_enable_with_type(VENDOR_HINT_SCROLL_BOOST, -1, SCROLL_PREFILING);
    } else {
        perf_hint_enable_with_type(VENDOR_HINT_SCROLL_BOOST, duration, SCROLL_VERTICAL);
    }
    return HINT_HANDLED;
}

int power_hint_override(struct power_module* module __unused, power_hint_t hint,
                        void* data __unused) {
    int ret_val = HINT_NONE;
    switch (hint) {
        case POWER_HINT_INTERACTION:
            ret_val = process_interaction_hint(data);
            break;
        case POWER_HINT_LAUNCH:
            ret_val = process_activity_launch_hint(data);
            break;
        default:
            break;
    }
    return ret_val;
}
