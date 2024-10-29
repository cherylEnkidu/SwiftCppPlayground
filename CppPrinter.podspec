Pod::Spec.new do |cpp|
  cpp.name             = 'CppPrinter'
  cpp.module_name      = 'CppPrinter'
  cpp.version          = '1.0.0'
  cpp.summary          = 'Cpp Resource'
  cpp.authors          = 'Google, Inc.'
  cpp.homepage         = 'https://developers.google.com/'
  cpp.license          = { :type => 'Apache-2.0' }
  
  cpp.source           = { :git => 'https://github.com/cherylEnkidu/SwiftCppPlayground.git' }
  
  cpp.ios.deployment_target = '13.0'
  cpp.osx.deployment_target = '10.0'
  cpp.tvos.deployment_target = '13.0'

  
  cpp.source_files = 'CppPrinter/**/*.{cpp,h}' # Source files for C++ target
  cpp.public_header_files = 'CppPrinter/include/**/*.h' # Public headers path


  cpp.library = 'c++'
  cpp.pod_target_xcconfig = {
    'CLANG_CXX_LANGUAGE_STANDARD' => 'c++14',
    'CLANG_CXX_LIBRARY' => 'libc++',
    'GCC_C_LANGUAGE_STANDARD' => 'c99',
    'OTHER_LDFLAGS' => '-lc++',
    'USER_HEADER_SEARCH_PATHS' => 'CppPrinter/include',
    'OTHER_CFLAGS' => '-stdlib=libc++',
    'OTHER_CPLUSPLUSFLAGS' => '-std=c++14'
  }
  
end
