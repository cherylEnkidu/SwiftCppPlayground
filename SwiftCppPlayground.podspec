Pod::Spec.new do |s|
  s.name             = 'SwiftCppPlayground'
  s.module_name = 'SwiftCppPlayground'
  s.version          = '1.0.0'
  s.summary          = 'Swift Cpp Playground'
  s.authors          = 'Google, Inc.'
  s.homepage         = 'https://developers.google.com/'
  
  s.source           = {
    :git => 'https://github.com/cherylEnkidu/SwiftCppPlayground.git'
  }

  s.ios.deployment_target = '13.0'
  s.osx.deployment_target = '10.15'
  s.tvos.deployment_target = '13.0'

  s.swift_version = '5.9'

  s.cocoapods_version = '>= 1.12.0'
  s.prefix_header_file = false

  s.requires_arc            = true
  s.source_files = '**/*.{cc,h,swift}'
  
  s.exclude_files = 'Package.swift'

  s.library = 'c++'
  s.pod_target_xcconfig = {
    'CLANG_CXX_LANGUAGE_STANDARD' => 'c++14',
    'CLANG_CXX_LIBRARY' => 'libc++',
    'GCC_C_LANGUAGE_STANDARD' => 'c99',
    'OTHER_LDFLAGS' => '-lc++',
    "SWIFT_OBJC_INTEROP_MODE" => "objcxx",
  }

end
