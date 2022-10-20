Pod::Spec.new do |s|
  s.name         = "lib-ffmpeg-ios"
  s.version      = "4.0"
  s.summary      = "FFmpeg static libraries compiled for iOS"
  s.homepage     = "https://github.com/zhangzhaopds/lib-ffmpeg-ios"
  
  s.license      = { :type => 'MIT', :file => 'LICENSE' }
  s.author       = { "zhangzhaopds" => "zhangzhaopds@foxmail.com" }
  s.platform     = :ios, "11.0"
  s.source       = { :git => "https://github.com/zhangzhaopds/lib-ffmpeg-ios.git", :tag => "ffmpeg-4.0" }

  s.vendored_libraries =  'ffmpeg-libs/lib/*.{a}'
  s.source_files = 'ffmpeg-libs/include/**/*.{h}'
  s.public_header_files = 'ffmpeg-libs/include/**/*.{h}'

  s.libraries = 'bz2', 'c++', 'z', 'iconv'
  s.frameworks = 'UIKit','AudioToolBox','CoreImage','CoreMedia','VideoToolBox','AVFoundation'
end
