#
#  Be sure to run `pod spec lint LeoCopyObject.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#
#  To learn more about Podspec attributes see http://docs.cocoapods.org/specification.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#

Pod::Spec.new do |s|

  s.name         = "LeoCopyObject"
  s.version      = "1.0"
  s.summary      = "LeoCopyObject"
  s.description  = <<-DESC
                   自定义对象深拷贝
                   DESC

  s.homepage     = "https://github.com/LeoChensj/LeoCopyObject"
  s.license      = "MIT"
  s.author       = { "LeoChen" => "LeoChensj@163.com" }
  s.platform     = :ios, "7.0"
  s.source       = { :git => "https://github.com/LeoChensj/LeoCopyObject.git", :tag => "#{s.version}" }
  s.source_files = "LeoCopyObject/*.{h,m}"
  s.public_header_files = "LeoCopyObject/*.h"
  s.requires_arc = true

end
