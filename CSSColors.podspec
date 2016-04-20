

Pod::Spec.new do |s|
  s.name             = "CSSColors"
  s.version          = "0.1.0"
  s.summary          = "UIColor extension for supporting CSS Colors"

  s.description      = <<-DESC
                      Extend UIColor to Support CSS Color Codes
                      Create UIColor objects with rgb and rgba color codes
                       DESC

  s.homepage         = "https://github.com/jeswinsimon/CSSColors"
  # s.screenshots     = "www.example.com/screenshots_1", "www.example.com/screenshots_2"
  s.license          = { :type => "MIT", :file => "LICENSE" }
  s.author           = { "jeswinsimon" => "jeswinsimon@gmail.com" }
  s.source           = { :git => "https://github.com/jeswinsimon/CSSColors.git", :tag => s.version.to_s }
  s.social_media_url = 'https://twitter.com/jeswinsimon'

  s.ios.deployment_target = '8.0'

  s.source_files = 'Source/*.swift'

end
