#
# Be sure to run `pod lib lint LeanplumSegment.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = "LeanplumSegment-tvOS"
  s.version          = "1.1.2"
  s.summary          = "Leanplum SDK integration for the Segment iOS SDK."
  s.description      = "Mobile A/B testing, personalization & analytics in one powerful platform."
  s.homepage         = 'https://www.leanplum.com'

  s.license          = { :type => 'Commercial', :text => 'See https://www.leanplum.com/tos' }
  s.author           = { 'Leanplum' => 'support@leanplum.com' }
  s.social_media_url = 'https://twitter.com/leanplum'
  s.platform         = :tvos, '10.0'
  s.requires_arc     = true

  s.source           = { :git => "https://github.com/fubotv/Leanplum-Segment-iOS.git" }

  s.source_files     = 'Pod/Classes/**/*'

  s.dependency 'Analytics', '~> 3'
  s.dependency 'Leanplum-tvOS-SDK', '~> 2'

end
