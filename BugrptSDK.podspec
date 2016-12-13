Pod::Spec.new do |s|
  s.name         = 'BugrptSDK'
  s.version      = '1.2.2'
  s.summary      = "Bugrpt iOS SDK"
  s.description  = "iOS framework for Crash Report Service"
  s.homepage     = 'http://crash.163.com/'
  s.authors      = { 'apksafe' => 'apksafe@163.com' }
  s.license      = { :type => 'Free', :text => "©2016 crash.163.com" }
  s.source       = { :http => "https://raw.githubusercontent.com/apksafe/Bugrpt-iOS/master/Release/bugrpt_ios_1.2.2.zip" }
  s.requires_arc = true
  s.platform     = :ios
  s.ios.deployment_target = "7.0"
  s.vendored_frameworks ='Bugrpt.framework'
  s.frameworks = 'SystemConfiguration','Security','CoreTelephony','CFNetwork','JavaScriptCore'
  s.library = 'c++','z'
  end
