Pod::Spec.new do |s|
  s.name         = 'trashID'
  s.version      = '1.2.0'
  s.summary      = "trashID iOS SDK"
  s.description  = "iOS framework for trashID"
  s.homepage     = 'http://crash.163.com/'
  s.authors      = { 'apksafe' => 'apksafe@163.com' }
  s.license      = { :type => 'Free', :text => "©2016 crash.163.com" }
  s.source       = { :http => "http://crash-public-online.nos.netease.com/trashid_ios_1.2.0.zip" }
  s.requires_arc = true
  s.platform     = :ios
  s.vendored_frameworks ='trashID.framework'
  s.ios.deployment_target = "7.0"
  s.frameworks = 'SystemConfiguration','Security','CoreTelephony','CFNetwork','JavaScriptCore'
  s.library = 'c++','z'
  end
