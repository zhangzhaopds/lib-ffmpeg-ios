Pod::Spec.new do |s|
  s.name         = "lib-ffmpeg-ios"
  s.version      = "4.1"
  s.summary      = "FFmpeg static libraries compiled for iOS"
  s.homepage     = "https://github.com/zhangzhaopds/lib-ffmpeg-ios"
  
  s.license      = { :type => 'MIT', :file => 'LICENSE' }
  s.author       = { "zhangzhaopds" => "zhangzhaopds@foxmail.com" }
  s.platform     = :ios, "11.0"
  s.source       = { :git => "https://github.com/zhangzhaopds/lib-ffmpeg-ios.git", :tag => "4.1" }

  s.vendored_libraries = 'ffmpeg-libs/lib/libavcodec.a','ffmpeg-libs/lib/libavfilter.a','ffmpeg-libs/lib/libavformat.a','ffmpeg-libs/lib/libavutil.a','ffmpeg-libs/lib/libswresample.a','ffmpeg-libs/lib/libswscale.a' 
  s.source_files = 'ffmpeg-libs/include/**/*.{h}'
  s.public_header_files = 'ffmpeg-libs/include/**/*.{h}'

  s.libraries = 'bz2', 'c++', 'z', 'iconv'
  s.frameworks = 'UIKit','AudioToolBox','CoreImage','CoreMedia','VideoToolBox','AVFoundation'

  s.pod_target_xcconfig = {
    'LIBRARY_SEARCH_PATHS'   => '$(inherited)   $(PODS_CONFIGURATION_BUILD_DIR)/../ffmpeg-libs/lib',
    'HEADER_SEARCH_PATHS'   => '$(inherited)   $(PODS_CONFIGURATION_BUILD_DIR)/../ffmpeg-libs/include',
    'VALID_ARCHS' => 'x86_64 armv7 arm64'
  }
end
