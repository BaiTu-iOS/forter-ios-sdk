//
//  FTRSDKPublicConstants.h
//  ForterSDK
//
//  Created by Or Polaczek on 28/08/2016.
//  Copyright © 2016 Forter. All rights reserved.
//

#pragma once

// ForterSDK v2.1.1-56: echo "2.1.156" | md5
#define FTR_SDK_VERSION_STRING_NAME @"2.1.1"
#define FTR_SDK_VERSION_STRING_BUILD @"56"
#define FTR_SDK_VERSION_SIGNATURE @"02c6f29762bf7aceb2d99b300b5d9639"

#define FTR_SDK_LOG_LEVEL_OFF 0
#define FTR_SDK_LOG_LEVEL_ERROR 1
#define FTR_SDK_LOG_LEVEL_WARN 2
#define FTR_SDK_LOG_LEVEL_DEBUG 3
#define FTR_SDK_LOG_LEVEL_INFO 4
#define FTR_SDK_LOG_LEVEL_VERBOSE 5

#define FTR_SDK_UI_KIT_DEPENDENCY_ENABLED 1 

/** 
 Navigation type to be used when tracking navigation using [ForterSDK trackNavigation:withType:]
 */
typedef NS_ENUM(NSUInteger, FTRSDKNavigationType) {
  FTRSDKNavigationTypeProduct,
  FTRSDKNavigationTypeAccount,
  FTRSDKNavigationTypeSearch,
  FTRSDKNavigationTypeCheckout,
  FTRSDKNavigationTypeCart,
  FTRSDKNavigationTypeApp,
  FTRSDKNavigationTypeHelp
};

/**
 Track type to be used when tracking user behaviour using [ForterSDK trackAction:]
 */
typedef NS_ENUM(NSUInteger, FTRSDKActionType) {
  FTRSDKActionTypeTap,
  FTRSDKActionTypeClipboard,
  FTRSDKActionTypeTyping,
  FTRSDKActionTypeAddToCart,
  FTRSDKActionTypeRemoveFromCart,
  FTRSDKActionTypeAcceptedPromotion,
  FTRSDKActionTypeAcceptedTos,
  FTRSDKActionTypeAccountLogin,
  FTRSDKActionTypeAccountLogout,
  FTRSDKActionTypeAccountIdAdded,
  FTRSDKActionTypePaymentInfo,
  FTRSDKActionTypeShare,
  FTRSDKActionTypeConfigurationUpdate,
  FTRSDKActionTypeAppActive,
  FTRSDKActionTypeAppPause,
  FTRSDKActionTypeRate,
  FTRSDKActionTypeIsJailbroken,
  FTRSDKActionTypeSearchQuery,
  FTRSDKActionTypeReferrer,
  FTRSDKActionTypeWebviewToken,
  FTRSDKActionTypeOther
};

/**
 Account ID type to be used when providing user account info using [ForterSDK setAccountIdentifier:withType:]
 */
typedef NS_ENUM(NSUInteger, FTRSDKAccountIdType) {
  FTRSDKAccountIdTypeMerchant,
  FTRSDKAccountIdTypeFacebook,
  FTRSDKAccountIdTypeGoogle,
  FTRSDKAccountIdTypeTwitter,
  FTRSDKAccountIdTypeAppleIDFA,
  FTRSDKAccountIdTypeOther
};

/* FTRSDKPublicConstants_h */
