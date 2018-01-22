#
# Be sure to run `pod lib lint LeanplumSegment.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = "LeanplumSegment"
  s.version          = "1.1.3"
  s.summary          = "Leanplum SDK integration for the Segment iOS & tvOS SDKs."
  s.description      = "Mobile A/B testing, personalization & analytics in one powerful platform."
  s.homepage         = 'https://www.leanplum.com'

  s.license          = { :type => 'Commercial', :text => 'See https://www.leanplum.com/tos' }
  s.author           = { 'Leanplum' => 'support@leanplum.com' }
  s.social_media_url = 'https://twitter.com/leanplum'

  s.requires_arc     = true

  s.source           = { :git => "https://github.com/fubotv/Leanplum-Segment-iOS.git" }

  s.source_files     = 'Pod/Classes/**/*'

  s.dependency 'Analytics', '~> 3'
  s.ios.deployment_target = '8.0'
  s.ios.dependency 'Leanplum-iOS-SDK', '~> 2'

  s.tvos.deployment_target = '9.0'
  s.tvos.dependency 'Leanplum-tvOS-SDK', '~> 2'
end
