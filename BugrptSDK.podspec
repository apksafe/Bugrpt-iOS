Pod::Spec.new do |s|
  s.name         = 'BugrptSDK'
  s.version      = '1.2.0.1'
  s.summary      = "Bugrpt iOS SDK"
  s.description  = "iOS framework for Crash Report Service"
  s.homepage     = 'http://crash.163.com/'
  s.authors      = { 'apksafe' => 'apksafe@163.com' }
  s.license      = { :type => 'Free', :text => "©2016 crash.163.com" }
  s.source       = { :http => "http://crash-public-online.nos.netease.com/bugrpt_ios_ceaf1_1.2.0.1.zip?hash=ceaf1b0ae4732657bef0cf406276810d" }
  s.requires_arc = true
  s.platform     = :ios
  s.ios.deployment_target = "7.0"
  s.vendored_frameworks ='Bugrpt.framework'
  s.public_header_files = 'Bugrpt.framework/Headers/*.h'
  s.frameworks = 'SystemConfiguration','Security','CoreTelephony','CFNetwork','JavaScriptCore'
  s.library = 'c++','z'
  end
