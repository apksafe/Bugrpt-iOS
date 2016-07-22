Pod::Spec.new do |s|
  s.name         = 'BugrptWatchOS'
  s.version      = '1.0.0'
  s.summary      = "Bugrpt Watch SDK"
  s.description  = "watchOS framework for Crash Report Service"
  s.homepage     = 'http://crash.163.com/'
  s.authors      = { 'apksafe' => 'apksafe@163.com' }
  s.license      = { :type => 'Free', :text => "©2016 crash.163.com" }
  s.source       = { :http => "https://raw.githubusercontent.com/apksafe/Bugrpt-iOS/master/Release/bugrpt_watch_1.0.0.zip" }
  s.requires_arc = true
  s.platform     = :watchos
  s.ios.deployment_target = "2.0"
  s.vendored_frameworks ='BugrptWatchOS.framework'
  s.public_header_files = 'BugrptWatchOS.framework/Headers/*.h'
  s.library = 'c++','z'
  end
