/* Copyright (c) 2012, 2014, The Linux Foundation. All rights reserved.
 *
 * Redistribution and use in source and binary forms, with or without
 * modification, are permitted provided that the following conditions are
 * met:
 *     * Redistributions of source code must retain the above copyright
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
 *
 */

#ifdef __cplusplus
extern "C" {
#endif

#define FAILED -1
#define SUCCESS 0
#define INDEFINITE_DURATION 0

/* Hints sent to perf HAL from power HAL
 * These have to be kept in sync with Perf HAL side definitions
 */
#define VENDOR_HINT_DISPLAY_OFF 0x00001040
#define VENDOR_HINT_DISPLAY_ON 0x00001041

#define VENDOR_HINT_SCROLL_BOOST 0x00001080
enum {
    SCROLL_VERTICAL = 1,
    SCROLL_HORIZONTAL = 2,
    SCROLL_PREFILING = 4,
};

#define VENDOR_HINT_LAUNCH_BOOST 0x00001081
enum {
    LAUNCH_BOOST_V1 = 1,
    LAUNCH_BOOST_V2 = 2,
    LAUNCH_BOOST_V3 = 3,
    LAUNCH_BOOST_V4 = 4,
};

#define VENDOR_HINT_MTP_BOOST 0x00001086

#define VENDOR_HINT_DRAG_BOOST 0x00001087
enum {
    DRAG_BOOST_V1 = 1,
};

#define VENDOR_HINT_PACKAGE_INSTALL_BOOST 0x00001088

#define VENDOR_HINT_ROTATION_LATENCY_BOOST 0x00001089

#define VENDOR_HINT_ROTATION_ANIMATION_BOOST 0x00001090

#ifdef __cplusplus
}
#endif
