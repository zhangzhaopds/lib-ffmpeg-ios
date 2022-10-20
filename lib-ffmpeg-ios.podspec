Pod::Spec.new do |s|
  s.name         = "lib-ffmpeg-ios"
  s.version      = "4.0"
  s.summary      = "FFmpeg static libraries compiled for iOS"
  s.homepage     = "https://github.com/zhangzhaopds/lib-ffmpeg-ios"
  
  s.license      = { :type => 'MIT', :file => 'LICENSE' }
  s.author       = { "zhangzhaopds" => "zhangzhaopds@foxmail.com" } # Podspec maintainer
  s.requires_arc = false
  
  s.platform     = :ios, "11.0"

  s.source       = { :git => "https://github.com/zhangzhaopds/lib-ffmpeg-ios.git", :tag => "ffmpeg-4.0" }

  s.libraries = 'bz2', 'c++', 'z', 'iconv'

  s.subspec 'libavcodec' do |ss|
      ss.source_files = 'ffmpeg-libs/include/libavcodec/*.{h}'
  end
  
  s.subspec 'libavdevice' do |ss|
      ss.source_files = 'ffmpeg-libs/include/libavdevice/*.{h}'
  end
  
  s.subspec 'libavfilter' do |ss|
      ss.source_files = 'ffmpeg-libs/include/libavfilter/*.{h}'
  end
  
  s.subspec 'libavformat' do |ss|
      ss.source_files = 'ffmpeg-libs/include/libavformat/*.{h}'
  end
  
  s.subspec 'libavutil' do |ss|
      ss.source_files = 'ffmpeg-libs/include/libavutil/*.{h}'
  end
  
  s.subspec 'libswresample' do |ss|
      ss.source_files = 'ffmpeg-libs/include/libswresample/*.{h}'
  end
  
  s.subspec 'libswscale' do |ss|
      ss.source_files = 'ffmpeg-libs/include/libswscale/*.{h}'
  end
  
  s.vendored_libraries =  'ffmpeg-libs/lib/*.{a}'
  s.public_header_files = 'ffmpeg-libs/include/**/*.{h}'
  s.pod_target_xcconfig = {
      'LIBRARY_SEARCH_PATHS'   => '$(inherited)   $(PODS_CONFIGURATION_BUILD_DIR)/../ffmpeg-libs/lib',
      'HEADER_SEARCH_PATHS'   => '$(inherited)   $(PODS_CONFIGURATION_BUILD_DIR)/../ffmpeg-libs/include',
      'OTHER_LDFLAGS'            => '$(inherited) -undefined dynamic_lookup -ObjC',
      'ENABLE_BITCODE'           => 'NO'
  }

  s.frameworks = 'UIKit','AudioToolBox','CoreImage','CoreMedia','VideoToolBox','AVFoundation'
end
