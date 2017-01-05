Pod::Spec.new do |s|
  s.name             = 'CGExtensions'
  s.version          = '0.1.0'
  s.summary          = 'Utility functions and operators on top the CoreGraphics.'
  s.description      = <<-DESC
CGExtensions provides convenient functions and operators for people working with
CoreGraphics framework, such as vector arithmetic and more succinct initializers.
                       DESC

  s.homepage         = 'https://github.com/takaiwai/CGExtensions'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Taka Iwai' => 'hello@takaiwai.com' }
  s.source           = { :git => 'https://github.com/takaiwai/CGExtensions.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '9.0'
  s.osx.deployment_target = '10.11'

  s.source_files = 'CGExtensions/Classes/**/*'

  # s.resource_bundles = {
  #   'CGExtensions' => ['CGExtensions/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
