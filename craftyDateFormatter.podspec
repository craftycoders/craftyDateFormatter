#
# Be sure to run `pod lib lint craftyDateFormatter.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'craftyDateFormatter'
  s.version          = '0.1.1'
  s.summary          = 'Clean and simple way to format dates on Swift.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = 'Formatting dates has always been a pain. Writing extensions at the beginning of each project for the attempt to make things easy is ideal but repetitive. This library allows you to get the same results with way less effort. Clean and elegant human-readable formats.'

  s.homepage         = 'https://github.com/craftycoders/craftyDateFormatter'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'craftycoders' => 'lyle@craftycoders.io' }
  s.source           = { :git => 'https://github.com/craftycoders/craftyDateFormatter.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '12.0'
  s.swift_versions = '5.0'

  s.source_files = 'craftyDateFormatter/Classes/**/*'
  
  # s.resource_bundles = {
  #   'craftyDateFormatter' => ['craftyDateFormatter/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
