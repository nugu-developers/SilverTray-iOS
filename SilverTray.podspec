Pod::Spec.new do |s|
  s.name = 'SilverTray'
  s.version = '1.3.0'
  s.license = 'Apache License, Version 2.0'
  s.summary = 'Data chunk player'
  s.description = <<-DESC
play encoded data using AVAudioEngine
                       DESC

  s.homepage = 'https://github.com/nugu-developers/silvertray-ios'
  s.author = { 'childc' => 'skimdcc@gmail.com' }
  s.source = { :git => 'https://github.com/nugu-developers/silvertray-ios.git', :tag => s.version.to_s }
  s.documentation_url = 'https://developers.nugu.co.kr'

  # Nugu does not yet support Apple Silicon
  s.pod_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=*simulator*]' => 'arm64' }
  s.user_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=*simulator*]' => 'arm64' }

  s.ios.deployment_target = '12.0'
  s.tvos.deployment_target = '13.0'
  # FIXME: OpusDecoder.o does not valid.
  # s.watchos.deployment_target = '6.0'
  # s.macos.deployment_target = '10.15.0'

  s.source_files = 'SilverTray/Classes/**/*', 'SilverTray/Libraries/**/*.h'
  s.public_header_files = 'SilverTray/Classes/**/*.h', 'SilverTray/Libraries/**/*.h'
  s.ios.vendored_libraries = 'SilverTray/Libraries/Opus/Binary/iOS/libopus.a'
  s.tvos.vendored_libraries = 'SilverTray/Libraries/Opus/Binary/tvOS/libopus.a'
  s.watchos.vendored_libraries = 'SilverTray/Libraries/Opus/Binary/watchOS/libopus.a'
  s.macos.vendored_libraries = 'SilverTray/Libraries/Opus/Binary/macOS/libopus.a'
  s.preserve_paths = 'SilverTray/Libraries/**'
  s.libraries = 'c++'

  s.xcconfig = {
    'OTHER_LDFLAGS' => '-Xlinker -w',
  }
  
end
