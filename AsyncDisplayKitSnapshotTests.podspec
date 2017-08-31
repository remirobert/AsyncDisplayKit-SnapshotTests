Pod::Spec.new do |s|
  s.name             = 'AsyncDisplayKitSnapshotTests'
  s.version          = '0.1.0'
  s.summary          = 'A short description of AsyncDisplayKit-SnapshotTests.'
  s.description      = <<-DESC
TODO: Add long description of the pod here.
                       DESC

  s.homepage         = 'https://github.com/remirobert/AsyncDisplayKit-SnapshotTests'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'remirobert' => 'remirobert33530@gmail.com' }
  s.source           = { :git => 'https://github.com/remirobert/AsyncDisplayKit-SnapshotTests.git', :tag => s.version.to_s }
  s.social_media_url = 'https://twitter.com/remi936'
  s.ios.deployment_target = '8.0'
  s.framework = 'XCTest'
  s.source_files = 'AsyncDisplayKit-SnapshotTests/Classes/**/*'
  s.dependency 'Texture', '~> 2.3'
end
