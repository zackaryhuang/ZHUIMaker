#
# Be sure to run `pod lib lint ZHUIMaker.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'ZHUIMaker'
  s.version          = '0.1.0'
  s.summary          = 'A framework to declare UI element more efficiently.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
  ZHUIMaker is a framework to declare UI element more efficiently with chain sytax grammar.
                   DESC

  s.homepage         = 'https://github.com/zackaryhuang/ZHUIMaker'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Zackary Huang' => 'huangchao0623@126.com' }
  s.source           = { :git => 'https://github.com/zackaryhuang/ZHUIMaker', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '10.0'

  s.source_files = 'ZHUIMaker/Classes/**/*.{h,m}'
  spec.public_header_files = [
      "ZHUIMaker/Classes/Button/UIButton+PropertyMaker.h",
      "ZHUIMaker/Classes/CollectionView/UICollectionView+PropertyMaker.h",
      "ZHUIMaker/Classes/ImageView/UIImageView+PropertyMaker.h",
      "ZHUIMaker/Classes/Label/UILabel+PropertyMaker.h",
      "ZHUIMaker/Classes/ScrollView/UIScrollView+PropertyMaker.h",
      "ZHUIMaker/Classes/TableView/UITableView+PropertyMaker.h",
      "ZHUIMaker/Classes/View/UIView+PropertyMaker.h",
    ]

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
   s.dependency 'Masonry'
end
