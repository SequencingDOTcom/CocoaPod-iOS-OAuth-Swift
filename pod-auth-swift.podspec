#
#  Be sure to run `pod spec lint pod-auth-swift.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#
#  To learn more about Podspec attributes see http://docs.cocoapods.org/specification.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#

Pod::Spec.new do |s|

  s.name         = "pod-auth-swift"
  s.version      = "1.0.0"
  s.summary      = "oAuth2 authentication implementation for Sequencing.com's API in Swift"
  s.homepage     = "https://github.com/SequencingDOTcom/CocoaPods-Swift-iOS-plugin.git"
  s.license      = { :type => "MIT", :file => "LICENSE" }
  s.author             = { "Sequencing" => "gittaca@sequencing.com" }
  
  s.source       = { 
  :git => "https://github.com/SequencingDOTcom/CocoaPods-Swift-iOS-plugin.git", 
  :tag => "1.0.0" 
  }
  s.platform     = :ios, '8.0'
  s.source_files = 'Pod', 'Pod/**/*.swift'  
  s.requires_arc = true

end
