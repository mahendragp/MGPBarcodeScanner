#
# Be sure to run `pod lib lint MGPBarcodeScanner.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'MGPBarcodeScanner'
  s.version          = '0.1.0'
  s.summary          = 'A powerful, fast and efficient library to scan Barcode and QR Codes.'
  s.description      = <<-DESC
A powerful, fast and efficient library to scan Barcode and QR Codes. Min. iOS requirement is iOS 10.0 or later
                       DESC
  s.homepage         = 'https://github.com/mahendragp/MGPBarcodeScanner'
  s.screenshots     = 'https://dl.dropboxusercontent.com/s/lfpu3ijmt0ykc05/Mahendra_1.png', 'https://dl.dropboxusercontent.com/s/aslcw5dp6yulv0b/Mahendra_2.png', 'https://dl.dropboxusercontent.com/s/01c9bojmn9bkk4s/Mahendra_3.png', 'https://dl.dropboxusercontent.com/s/ofy0xis8eh2o2ri/MahendraGP_barcode.png'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'MahendraGP' => 'patelarjun81@gmail.com'}
  s.source           = { :git => 'https://github.com/mahendragp/MGPBarcodeScanner.git', :tag => 'v0.1.0' }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'
  s.platform = :ios
  s.ios.frameworks = ['AVFoundation', 'UIKit']
  s.swift_version = '4.0'
  s.ios.deployment_target = '10.0'
  
  s.ios.source_files = 'MGPBarcodeScanner/Classes/**/*'
  
  # s.resource_bundles = {
  #   'MGPBarcodeScanner' => ['MGPBarcodeScanner/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  
  # s.dependency 'AFNetworking', '~> 2.3'
end
