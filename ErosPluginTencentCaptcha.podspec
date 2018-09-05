# coding: utf-8
Pod::Spec.new do |s|
  s.name         = "ErosPluginUMAnalytics"
  s.version      = "1.0.0"
  s.summary      = "ErosPluginUMAnalytics Source ."
  s.homepage     = 'https://github.com/kang558/eros-plugin-ios-TencentCaptcha'
  s.license      = "MIT"
  s.authors      = { "kang558" => "kang558@foxmail.com" }
  s.platform     = :ios
  s.ios.deployment_target = "8.0"
  s.source = { :git => 'https://github.com/kang558/eros-plugin-ios-TencentCaptcha.git', :tag => s.version.to_s }

  s.source_files = "Source/*.{h,m,mm}"
  s.requires_arc = true

end
