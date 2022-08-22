Pod::Spec.new do |s|

# 1
s.platform = :ios
s.ios.deployment_target = '12.0'
s.name = "RWPickFlavor"
s.summary = "RWPickFlavor lets a user select an ice cream flavor."
s.requires_arc = true

# 2
s.version = "0.8.0"

# 3
s.license = { :type => "MIT", :file => "LICENSE" }

# 4 - Replace with your name and e-mail address
s.author = { "Juan Delgado L" => "nvjuanddl@gmail.com" }

# 5 - Replace this URL with your own Github page's URL (from the address bar)
s.homepage = "https://github.com/nvjuanddl/RWPickFlavor"

# 6 - Replace this URL with your own Git URL from "Quick Setup"
#s.source = { :http => 'https://github.com/maplibre/maplibre-gl-native/releases/download/ios-v5.12.2/Mapbox-5.12.2.zip' }
s.source = { :git => "https://github.com/nvjuanddl/RWPickFlavor.git", :tag => "#{s.version}" }

# 7
s.static_framework = true

s.subspec 'Mapbox' do |ms|
  ms.source = { :http => 'https://github.com/maplibre/maplibre-gl-native/releases/download/ios-v5.12.2/Mapbox-5.12.2.zip' }
end

s.framework = "UIKit"
s.dependency 'Alamofire', '~> 4.7'
s.dependency 'MBProgressHUD', '~> 1.1.0'

# 10
s.swift_version = "5"

end
