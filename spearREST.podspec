#
# Be sure to run `pod lib lint spearREST.podspec' to ensure this is a
# valid spec and remove all comments before submitting the spec.
#
# Any lines starting with a # are optional, but encouraged
#
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = "spearREST"
  s.version          = "1.2.1"
  s.summary          = "Making using REST easy with objC."
  s.description      = <<-DESC


                       * Markdown format.
                       * Don't worry about the indent, we strip it!
                       DESC
  s.homepage         = "https://github.com/TolgaB/spearRest"
  # s.screenshots     = ""
  s.license          = 'MIT'
  s.author           = { "Tolgab" => "Mathman290@gmail.com" }
  s.source           = { :git => "https://github.com/tolgab/spearREST.git", :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/besertolga1'

  s.platform     = :ios, '7.0'
  s.requires_arc = true

  s.source_files = 'Pod/Classes/**/*'
  s.resource_bundles = {
    'spearREST' => ['Pod/Assets/*.png']
  }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
