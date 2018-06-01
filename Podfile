project 'Kitten.xcodeproj'

# Uncomment the next line to define a global platform for your project
# platform :ios, '9.0'

target 'Kitten' do
  # Comment the next line if you're not using Swift and don't want to use dynamic frameworks
  use_frameworks!

  # Pods for Kitten
  pod 'HaishinKit', '~> 0.8.8'
  # will be re-added later, since we don't have an api to use rn
  # pod 'Alamofire', '~> 4.7'
  
  # we may opt for plain websockets for speed
  # pod 'Socket.IO-Client-Swift', '~> 13.2.0'
end

plugin 'cocoapods-keys', {
  :project => "Kitten",
  :keys => [
    "KittenRTMPUrl",
    "KittenAPIUrl",
    "KittenHLSUrl"
  ]
 }
