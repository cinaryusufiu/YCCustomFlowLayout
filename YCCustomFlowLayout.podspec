Pod::Spec.new do |spec|



spec.name         = "YCCustomFlowLayout"
spec.version      = "0.1.0"
spec.summary      = "Custom Flow Layout"

spec.description  = <<-DESC
You can create CustomFlowLayout
DESC

spec.homepage     = "https://github.com/cinaryusufiu/YCCustomFlowLayout"
spec.license          = { :type => 'MIT', :file => 'LICENSE' }
spec.author             = { "Yusuf Cinar" => "cinaryusufiu@gmail.com" }
spec.social_media_url   = "https://twitter.com/cinaryusufiu"
spec.source       = { :git => "https://github.com/cinaryusufiu/YCCustomFlowLayout", :tag => "#{spec.version}" }

spec.source_files = 'YCCustomFlowLayout/YCCustomFlowLayout.swift'
spec.ios.deployment_target = '11.0'
end
