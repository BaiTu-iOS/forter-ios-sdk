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
  # s.module_map = 'module.modulemap'
  s.source_files = package["static"]["lib"]["headers"]
  s.public_header_files = package["static"]["lib"]["headers"]
  s.vendored_library = package["static"]["lib"]["path"]
end
