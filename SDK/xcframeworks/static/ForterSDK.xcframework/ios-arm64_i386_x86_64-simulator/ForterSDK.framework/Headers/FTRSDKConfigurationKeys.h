//
//  FTRSDKConfigurationKeys.h
//  ForterSDK
//
//  Created by Or Polaczek on 21/08/2018.
//  Copyright © 2018 Forter. All rights reserved.
//

#pragma once

// Booleans
#define FTR_SDK_CONF_KEY_EXPLICIT_BUFFER_FLUSHING @"EXPLICIT_BUFFER_FLUSHING"
#define FTR_SDK_CONF_KEY_IS_INTERNET_AVAILABLE @"IS_INTERNET_AVAILABLE"
#define FTR_SDK_CONF_KEY_SHOULD_REGISTER_FOR_LOCATION_UPDATES @"SHOULD_REGISTER_FOR_LOCATION_UPDATES"
#define FTR_SDK_CONF_KEY_CACHE_EVENTS @"CACHE_EVENTS"
#define FTR_SDK_CONF_KEY_REDUCE_BACKGROUND_NETWORKING @"REDUCE_BACKGROUND_NETWORKING"
#define FTR_SDK_CONF_KEY_COMPRESS_EVENTS @"COMPRESS_EVENTS"
#define FTR_SDK_CONF_KEY_GZIP_ENABLED @"GZIP_ENABLED"
#define FTR_SDK_CONF_KEY_FORCE_GET_REQUESTS @"FORCE_GET_REQUESTS"
#define FTR_SDK_CONF_KEY_SHOULD_GENERATE_CON_EVENT @"SHOULD_GENERATE_CON_EVENT"
#define FTR_SDK_CONF_KEY_CON_CALCULATION_MAX_KEYS @"CON_CALCULATION_MAX_KEYS"
#define FTR_SDK_CONF_KEY_CON_CALCULATION_TIMEOUT_MILLISECONDS @"CON_CALCULATION_TIMEOUT_MILLISECONDS"
#define FTR_SDK_CONF_KEY_FETCH_CONFIGURATION @"FETCH_CONFIGURATION"
// INTS
#define FTR_SDK_CONF_KEY_NETWORK_SUBMIT_INTERVAL_SECONDS @"NETWORK_SUBMIT_INTERVAL_SECONDS"
#define FTR_SDK_CONF_KEY_EVENT_MAX_AGE_SECONDS @"EVENT_MAX_AGE_SECONDS"
#define FTR_SDK_CONF_KEY_EVENT_CACHE_FOR_SECONDS @"EVENT_CACHE_FOR_SECONDS"
#define FTR_SDK_CONF_KEY_BUFFER_MAX_EVENTS @"BUFFER_MAX_EVENTS"
#define FTR_SDK_CONF_KEY_NETWORK_MAX_RETRIES @"NETWORK_MAX_RETRIES"
#define FTR_SDK_CONF_KEY_NETWORK_EXECUTOR_THREAD_POOL_SIZE @"NETWORK_EXECUTOR_THREAD_POOL_SIZE"
#define FTR_SDK_CONF_KEY_NETWORK_INITIAL_SOCKET_TIMEOUT @"NETWORK_INITIAL_SOCKET_TIMEOUT"
#define FTR_SDK_CONF_KEY_LOCATION_REFRESH_RATIO_METERS @"LOCATION_REFRESH_RATIO_METERS"
#define FTR_SDK_CONF_KEY_LOCATION_REFRESH_RATIO_SECONDS @"LOCATION_REFRESH_RATIO_SECONDS"
#define FTR_SDK_CONF_KEY_LOG_LEVEL @"LOG_LEVEL"
// LONGS
#define FTR_SDK_CONF_KEY_MAX_EVENT_SIZE @"MAX_EVENT_SIZE"
// Floats
#define FTR_SDK_CONF_KEY_NETWORK_TIMEOUT_BACKOFF_MULTIPLIER @"NETWORK_TIMEOUT_BACKOFF_MULTIPLIER"