Pod::Spec.new do |s|
  s.name             = "ForterSDK"
  s.version          = "1.4.1"
  s.summary          = "ForterSDK - Forter iOS SDK"
  s.description      = <<-DESC
                        ForterSDK ....
                       DESC
  
  s.homepage         = "https://www.forter.com"
  
  s.license          = { :type => "Commercial", :text => "Forter LTD Copyright 2016" }

  s.author           = { "Or Polaczek" => "or.polaczek@forter.com" }
  
  s.source           = { :git => "https://forter-orpolaczek:MpVQqUUYRHKZrCKV6vv7@bitbucket.org/forter-mobile/forter-ios-sdk.git", :tag => s.version.to_s }
  
  
  s.frameworks 	     = 'Foundation', 'CoreFoundation', 'CFNetwork', 'SystemConfiguration',  'CoreTelephony',  'UIKit' 

  s.ios.deployment_target = '8.0'
  
  s.requires_arc = true
  
  s.ios.vendored_framework = 'Carthage/Build/iOS/ForterSDK.framework'  
    
end
