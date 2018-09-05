# coding: utf-8
Pod::Spec.new do |s|
  s.name         = "ErosPluginUMAnalytics"
  s.version      = "1.0.0"
  s.summary      = "ErosPluginUMAnalytics Source ."
  s.homepage     = 'https://github.com/bmfe/eros-plugin-ios-UMAnalytics'
  s.license      = "MIT"
  s.authors      = { "xionghuayu" => "18601949015@163.com" }
  s.platform     = :ios
  s.ios.deployment_target = "8.0"
  s.source = { :git => 'https://github.com/bmfe/eros-plugin-ios-UMAnalytics.git', :tag => s.version.to_s }

  s.source_files = "Source/*.{h,m,mm}"
  s.requires_arc = true
  s.dependency 'UMCAnalytics', '5.5.0'

end
