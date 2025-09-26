#
# Be sure to run `pod lib lint FlagshipFeatureFlags.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'FlagshipFeatureFlags'
  s.version          = '0.1.0'
  s.summary          = 'FlagshipHorizon OpenFeature adapter for iOS'

  s.description      = <<-DESC
  A minimal OpenFeature provider (adapter) for iOS.
  Use it to register a FeatureProvider with OpenFeature and evaluate flags.
                       DESC

  s.homepage         = 'https://github.com/dream-sports-labs/flagship-sdk-ios-framework'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { '210496608' => 'atharva.kothawade@dream11.com' }
  s.source           = { :git => 'https://github.com/dream-sports-labs/flagship-sdk-ios-framework.git', :tag => s.version.to_s }

  s.ios.deployment_target = '14.0'
  s.swift_versions        = ['5.7', '5.8', '5.9']

  # Use vendored_frameworks for xcframework
  s.vendored_frameworks = 'FlagshipFeatureFlags.xcframework'
  s.dependency 'OpenFeature', '~> 0.3'
end
