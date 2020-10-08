require 'json'

package = JSON.parse(File.read(File.join(__dir__, './.', 'package.json')))

Pod::Spec.new do |s|
  s.name             = package["name"]
  s.version          = package["version"]
  s.summary          = package["summary"]
  s.description      = package["description"]
  s.homepage         = package["homepage"]
  s.license          = package["license"]
  s.author           = package["author"]
  s.source           = { :git => "https://bitbucket.org/forter-mobile/forter-ios-sdk.git", :tag => s.version.to_s }
  s.frameworks 	     = 'Foundation', 'CoreFoundation', 'CFNetwork', 'SystemConfiguration',  'CoreTelephony',  'UIKit'

  s.requires_arc = true
  s.ios.deployment_target = '8.0'
  s.module_map = 'module.modulemap'
  s.default_subspec = 'Dynamic'

  s.subspec 'Dynamic' do |sp|
    sp.ios.vendored_framework = package["dynamic"]["framework"]
    sp.ios.source_files = "#{package["dynamic"]["framework"]}/Headers/*.h"
    sp.ios.public_header_files = "#{package["dynamic"]["framework"]}/Headers/*.h"
  end

  s.subspec 'Static' do |sp|
    sp.prefix_header_file = false
    sp.ios.vendored_framework = package["static"]["framework"]["path"]
    sp.ios.source_files = "#{package["static"]["framework"]["path"]}/Headers/*.h"
    sp.ios.public_header_files = "#{package["static"]["framework"]["path"]}/Headers/*.h"
    # sp.preserve_path = 'module.modulemap', 'Static/ForterSDK.framework'
    sp.xcconfig = {
      'HEADER_SEARCH_PATHS' =>
      "\"${PODS_TARGET_SRCROOT}\/Static\" " +
      "\"${PODS_TARGET_SRCROOT}/Static/Headers/*.h\" " +
      "\"$(PODS_ROOT)/ForterSDK/Static/Headers/*.h\" " 
    }
  end

  s.subspec 'StaticLib' do |sp|
    sp.ios.vendored_library = package["static"]["lib"]["path"]
    sp.ios.source_files = package["static"]["lib"]["headers"]
    sp.ios.public_header_files = package["static"]["lib"]["headers"]
  end
end
