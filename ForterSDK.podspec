Pod::Spec.new do |s|
  s.name             = "ForterSDK"
  s.version          = "2.1.5"
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
  s.default_subspec = 'Dynamic'

  #dynamic framework
  s.subspec 'Dynamic' do |sp|
    sp.ios.vendored_framework = 'SDK/xcframeworks/dynamic/ForterSDK.xcframework'
    sp.ios.source_files = 'SDK/Headers/*.h'
    sp.ios.public_header_files = 'SDK/Headers/*.h'
  end

  # static framework
  s.subspec 'Static' do |sp|
    sp.ios.vendored_framework = 'SDK/xcframeworks/static/ForterSDK.xcframework'
    sp.ios.source_files = 'SDK/Headers/*.h'
    sp.ios.public_header_files = 'SDK/Headers/*.h'
  end

  # static lib
  # s.subspec 'StaticLib' do |sp| 
  #   sp.prefix_header_file = false
  #   sp.ios.vendored_library = 'SDK/libForterSDK-2.1.5-63.a'
  #   sp.ios.source_files = 'SDK/Headers/*.h'
  #   sp.ios.public_header_files = 'SDK/Headers/*.h'
  #   sp.xcconfig = {
  #     'HEADER_SEARCH_PATHS' =>
  #     "\"${PODS_TARGET_SRCROOT}\/SDK\" " +
  #     "\"${PODS_TARGET_SRCROOT}/SDK/Headers/*.h\" " +
  #     "\"$(PODS_ROOT)/SDK/Headers/*.h\" " 
  #   }
  # end
end
