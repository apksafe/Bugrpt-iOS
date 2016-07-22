Pod::Spec.new do |s|
  s.name         = 'BugrptExtension'
  s.version      = '1.1.2'
  s.summary      = "Bugrpt iOS Extension SDK"
  s.description  = "iOS Extension framework for Crash Report Service"
  s.homepage     = 'http://crash.163.com/'
  s.authors      = { 'apksafe' => 'apksafe@163.com' }
  s.license      = { :type => 'Free', :text => "©2016 crash.163.com" }
  s.source       = { :http => "https://raw.githubusercontent.com/apksafe/Bugrpt-iOS/master/Release/bugrpt_ios_extension_1.1.2.zip" }
  s.requires_arc = true
  s.platform     = :ios
  s.ios.deployment_target = "7.0"
  s.vendored_frameworks ='BugrptExtension.framework'
  s.public_header_files = 'BugrptExtension.framework/Headers/*.h'
  s.frameworks = 'SystemConfiguration','Security','CoreTelephony','CFNetwork','JavaScriptCore','WatchKit'
  s.library = 'c++','z'
  end