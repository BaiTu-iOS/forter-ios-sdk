Pod::Spec.new do |s|
  s.name             = "ForterSDKstatic"
  s.version          = "2.1.3"
  s.summary          = "ForterSDK - Forter iOS SDK"
  s.description      = <<-DESC
                        Forter's iOS Fraud Prevention SDK (statically linked version)
                       DESC
  
  s.homepage         = "https://www.forter.com"
  s.license          = { :type => "Commercial", :text => "Forter LTD Copyright 2016-2020" }
  s.author           = { "Forter Tech Research & Growth Engineering" => "mobile@forter.com" }
  s.source           = { :git => "https://bitbucket.org/forter-mobile/forter-ios-sdk.git", :tag => s.version.to_s }
  s.frameworks 	     = 'Foundation', 'CoreFoundation', 'CFNetwork', 'SystemConfiguration',  'CoreTelephony',  'UIKit'
  s.static_framework = true
  s.prefix_header_file = false
  s.ios.deployment_target = '8.0'
  s.requires_arc = true
  s.ios.vendored_library = 'Carthage/Build/iOS/libForterSDK-2.1.3-61.a' 
  s.ios.source_files = 'Carthage/Build/iOS/ForterSDK.framework/Headers/*.h'
  s.ios.public_header_files = 'Carthage/Build/iOS/ForterSDK.framework/Headers/*.h'
  s.xcconfig = {
    'HEADER_SEARCH_PATHS' =>
    "\"${PODS_TARGET_SRCROOT}\" " +
    "\"${PODS_TARGET_SRCROOT}/Carthage/Build/iOS/ForterSDK.framework/Headers/*.h\""
  }
    
end
