#
#  Be sure to run `pod spec lint Helloworld.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#
#  To learn more about Podspec attributes see http://docs.cocoapods.org/specification.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#

Pod::Spec.new do |s|

  s.name         = "Bugrpt"
  s.version      = "1.0.1"
  s.summary      = "Bugrpt iOS SDK"
  s.description  = "iOS library for Bugrpt Crash Report Service"
  s.homepage     = "http://crash.163.com"
  s.license      = 'MIT'
  s.author       = { "apksafe" => "apksafe@163.com" }  
  s.platform     = :ios, "7.0"
  s.source       = { :http => "https://github.com/apksafe/Bugrpt-iOS/master/Release/bugrpt_ios_1.0.8.zip"}
  s.vendored_frameworks ='Bugrpt.framework'
  s.source_files = 'Bugrpt.framework/Headers/*.h'
  s.frameworks = 'SystemConfiguration','Security','JavaScriptCore'

end
