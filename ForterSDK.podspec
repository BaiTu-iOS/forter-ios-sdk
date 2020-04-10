Pod::Spec.new do |s|
  s.name             = "ForterSDK"
  s.version          = "2.1.3"
  s.summary          = "ForterSDK - Forter iOS SDK"
  s.description      = <<-DESC
                        Forter's iOS Fraud Prevention SDK 
                       DESC
  
  s.homepage         = "https://www.forter.com"
  s.license          = { :type => "Commercial", :text => "Forter LTD Copyright 2016-2020" }
  s.author           = { "Forter Tech Research & Growth Engineering" => "mobile@forter.com" }
  s.source           = { :git => "https://bitbucket.org/forter-mobile/forter-ios-sdk.git", :tag => s.version.to_s }
  s.frameworks 	     = 'Foundation', 'CoreFoundation', 'CFNetwork', 'SystemConfiguration',  'CoreTelephony',  'UIKit'

  s.requires_arc = true
  s.ios.deployment_target = '8.0'
  s.module_map = 'module.modulemap'
  s.default_subspec = 'Framework'
  

  s.subspec 'Framework' do |sp|
    sp.ios.vendored_framework = 'Carthage/Build/iOS/ForterSDK.framework' 
    sp.ios.source_files = 'Carthage/Build/iOS/ForterSDK.framework/Headers/*.h'
    sp.ios.public_header_files = 'Carthage/Build/iOS/ForterSDK.framework/Headers/*.h'
  end

  s.subspec 'Static' do |sp|
    sp.prefix_header_file = false
    sp.ios.vendored_library = 'Static/libForterSDK-2.1.3-61.a' 
    sp.ios.source_files = 'Static/Headers/*.h'
    sp.ios.public_header_files = 'Static/Headers/*.h'
    sp.preserve_path = 'module.modulemap', 'Static/libForterSDK-2.1.3-61.a'
    sp.xcconfig = {
      'HEADER_SEARCH_PATHS' =>
      "\"${PODS_TARGET_SRCROOT}\/Static\" " +
      "\"${PODS_TARGET_SRCROOT}/Static/Headers/*.h\" " +
      "\"$(PODS_ROOT)/ForterSDK/Static/Headers/*.h\" " 
    }
  end  
end
