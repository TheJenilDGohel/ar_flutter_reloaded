#
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html.
# Run `pod lib lint ar_flutter_reloaded.podspec` to validate before publishing.
#
Pod::Spec.new do |s|
  s.name             = 'ar_flutter_reloaded'
  s.version          = '0.6.2'
  s.summary          = 'A Flutter plugin for shared AR experiences.'
  s.description      = <<-DESC
A Flutter plugin for shared AR experiences supporting Android and iOS.
                       DESC
  s.license          = { :file => '../LICENSE' }
  s.author           = { 'Jenil D Gohel' => 'dev.jenildgohel@gmail.com' }
  s.source           = { :path => '.' }
  s.source_files = 'Classes/**/*'
  s.dependency 'Flutter'
  s.dependency 'GLTFSceneKit'
  s.dependency 'SwiftJWT'
  s.static_framework = true

  # try to update this only if you have any issues related to 'ARCore/CloudAnchors'
#   s.dependency 'ARCore/CloudAnchors', '~> 1.46.0'
#   s.dependency 'ARCore', '~> 1.46.0'
  s.dependency 'ARCoreNanoPbUpdated/CloudAnchors', '~> 1.46.0.2'

  s.platform = :ios, '13.0'


  # Flutter.framework does not contain a i386 slice.
  s.pod_target_xcconfig = { 'DEFINES_MODULE' => 'YES', 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'i386' }
  s.swift_version = '5.0'
end
