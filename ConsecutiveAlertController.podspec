#
# Be sure to run `pod lib lint ConsecutiveAlertController.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'ConsecutiveAlertController'
  s.version          = '0.1.2'
  s.summary          = 'Can make to show alert as consecutive.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
The UIAlertView has been replaced with a UIAlertController, so the parent view is required. This is a problem if the alerts are shown continuously. It manages this as a stack, providing the ability to allow Alerts to be viewed continuously.
                       DESC

  s.homepage         = 'https://github.com/beomcheol/ConsecutiveAlertController'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'beomcheol' => 'beomcheol.shin@deliveryhero.co.kr' }
  s.source           = { :git => 'https://github.com/beomcheol/ConsecutiveAlertController.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'
  s.swift_version    = '4.0'

  s.ios.deployment_target = '9.0'

  s.source_files = 'ConsecutiveAlertController/Classes/**/*'
  
  # s.resource_bundles = {
  #   'ConsecutiveAlertController' => ['ConsecutiveAlertController/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
