Pod::Spec.new do |s|
  s.name             = "ForterSDKstatic"
  s.version          = "2.1.2"
  s.summary          = "ForterSDK - Forter iOS SDK"
  s.description      = <<-DESC
                        Forter's iOS Fraud Prevention SDK (statically linked version)
                       DESC
  
  s.homepage         = "https://www.forter.com"
  s.license          = { :type => "Commercial", :text => "Forter LTD Copyright 2016-2019" }
  s.author           = { "Forter Tech Research" => "mobile@forter.com" }
  s.source           = { :git => "https://bitbucket.org/forter-mobile/forter-ios-sdk.git", :tag => s.version.to_s }
  s.frameworks 	     = 'Foundation', 'CoreFoundation', 'CFNetwork', 'SystemConfiguration',  'CoreTelephony',  'UIKit'
  s.static_framework = true
  s.ios.deployment_target = '8.0'
  s.requires_arc = true
  s.ios.vendored_framework = 'Carthage/Build/iOS/Static/ForterSDK.framework' 
  s.ios.source_files = 'Carthage/Build/iOS/Static/ForterSDK.framework/Headers/*.h'
  s.ios.public_header_files = 'Carthage/Build/iOS/Static/ForterSDK.framework/Headers/*.h'
    
end