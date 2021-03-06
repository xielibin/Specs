#
# Be sure to run `pod lib lint LBPayMaxLKL.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'LBPayMaxLKL'
  s.version          = '0.1.2'
  s.summary          = 'LBPayMaxLKL for pay '

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
                    LBPayMaxLKL for pay with alipay ...
                       DESC

  s.homepage         = 'https://github.com/xielibin1@163.com/LBPayMaxLKL'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'xielibin1@163.com' => 'xielibin_bin@163.com' }
  s.source           = { :git => 'http://gt.gitlab.com/ios/LBPayMaxLKL.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '9.0'

  s.source_files = 'LBPayMaxLKL/Classes/**/*'
  
  # s.resource_bundles = {
  #   'LBPayMaxLKL' => ['LBPayMaxLKL/Assets/*.png']
  # }
  
  s.static_framework = true
  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  s.frameworks = 'CFNetwork', 'SystemConfiguration', 'Security', 'CoreTelephony'
  s.libraries = 'c++', 'z', 'sqlite3.0'
  # s.dependency 'AFNetworking', '~> 2.3'
  s.dependency 'TLAdapter', '0.5.0'
  s.dependency 'LKLPayGTSDK', '0.0.4'
  
  s.requires_arc = true
  
  s.swift_version = "4.2"
  s.pod_target_xcconfig = { 'SWIFT_VERSION' => '4.2', 'OTHER_LDFLAGS' => '-lObjC' }
end
