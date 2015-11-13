/*
*     Copyright 2015 IBM Corp.
*     Licensed under the Apache License, Version 2.0 (the "License");
*     you may not use this file except in compliance with the License.
*     You may obtain a copy of the License at
*     http://www.apache.org/licenses/LICENSE-2.0
*     Unless required by applicable law or agreed to in writing, software
*     distributed under the License is distributed on an "AS IS" BASIS,
*     WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
*     See the License for the specific language governing permissions and
*     limitations under the License.
*/

internal let MFP_ANALYTICS_PACKAGE = "mfpsdk.analytics"

internal let KEY_METADATA_CATEGORY = "$category"
internal let KEY_METADATA_TYPE = "$type"
internal let KEY_EVENT_START_TIME = "$startTime"
internal let KEY_METADATA_DURATION = "$duration"

internal let TAG_CATEGORY_EVENT = "event"
internal let TAG_SESSION = "$session"
internal let TAG_SESSION_ID = "$sessionId"
internal let TAG_APP_STARTUP = "$startup"
internal let TAG_MSG = "msg"
internal let TAG_PKG = "pkg"
internal let TAG_TIMESTAMP = "timestamp"
internal let TAG_LEVEL = "level"
internal let TAG_META_DATA = "metadata"




internal let CONTENT_TYPE = "Content-Type"
internal let TEXT_PLAIN_TYPE = "text/plain"




internal let LOGGER_TRACE = 600

/** Debug level */
internal let LOGGER_DEBUG = 500

/** Log level */
internal let LOGGER_LOG = 400

/** Info level */
internal let LOGGER_INFO = 300

/** Warn level */
internal let LOGGER_WARN = 200

/** Error level */
internal let LOGGER_ERROR = 100

/** Fatal level */
internal let LOGGER_FATAL = 50

/** Analytics level */
internal let LOGGER_ANALYTICS = 25

internal let DEFAULT_MAX_FILE_SIZE = 100000

internal let DEFAULT_LOW_BOUND_FILE_SIZE = 10000


