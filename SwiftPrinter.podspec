Pod::Spec.new do |s|
  s.name             = 'SwiftPrinter'
  s.module_name      = 'SwiftPrinter'
  s.version          = '1.0.0'
  s.summary          = 'Swift Playground'
  s.authors          = 'Google, Inc.'
  s.homepage         = 'https://developers.google.com/'
  s.license          = { :type => 'Apache-2.0' }

  s.source           = { :git => 'https://github.com/cherylEnkidu/SwiftCppPlayground.git' }

  s.ios.deployment_target = '13.0'
  s.osx.deployment_target = '10.15'
  s.tvos.deployment_target = '13.0'

  s.swift_version = '5.9'
  s.cocoapods_version = '>= 1.12.0'
  s.prefix_header_file = false
  
  s.source_files = 'SwiftPrinter/**/*.swift'

  s.requires_arc            = true
  
  s.pod_target_xcconfig = {
    'SWIFT_OBJC_INTEROP_MODE' => 'objcxx'
  }
  
end
