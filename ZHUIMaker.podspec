#
# Be sure to run `pod lib lint ZHUIMaker.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'ZHUIMaker'
  s.version          = '0.1.2'
  s.summary          = 'A framework to declare UI element more efficiently.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
  ZHUIMaker is a framework to declare UI element more efficiently with chain sytax grammar.
                   DESC

  s.homepage         = 'https://github.com/zackaryhuang/ZHUIMaker.git'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Zackary Huang' => 'huangchao0623@126.com' }
  s.source           = { :git => 'https://github.com/zackaryhuang/ZHUIMaker.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '10.0'

  s.source_files = 'ZHUIMaker/Classes/**/*'

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
   s.dependency 'Masonry'
end
