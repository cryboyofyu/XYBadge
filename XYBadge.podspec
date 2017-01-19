  Pod::Spec.new do |s|
  s.name         = "XYBadge"
  s.version      = "0.0.1"
  s.summary      = "a custom message badge"
  s.description  = <<-DESC
          a custom message badge.
                   DESC

  s.homepage     = "https://github.com/cryboyofyu/XYBadge.git"

  s.license      = "MIT"
  s.license      = { :type => "MIT", :file => "FILE_LICENSE" }

  s.author             = { "LV" => "cryboyofyu@gmail.com" }

  s.platform     = :ios, "7.0"

  s.source       = { :git => "https://github.com/cryboyofyu/XYBadge.git", :tag => "0.0.1" }
  s.source_files  = "XYBadge/*.{h,m}"
  s.resources = "XYBadgeExample/*.jpg"

  s.framework  = "UIKit"
  # s.requires_arc = true

end
