#
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html.
# Run `pod lib lint jitsi_meet.podspec' to validate before publishing.
#
Pod::Spec.new do |s|
  s.name             = 'jitsi_meet'
  s.version          = '0.0.2'
  s.summary          = 'Jitsi Meet Plugin'
  s.description      = <<-DESC
Jitsi Meet Plugin
                       DESC
  s.homepage         = 'http://example.com'
  s.license          = { :file => '../LICENSE' }
  s.author           = { 'Your Company' => 'email@example.com' }
  s.source           = { :path => '.' }
  s.source_files = 'Classes/**/*'
  s.dependency 'Flutter'
  s.dependency 'JitsiMeetSDK', '8.1.2'
  s.platform = :ios, '12.0'
  s.ios.deployment_target = '12.0'
  

  # Flutter.framework does not contain a i386 slice. Only x86_64 simulators are supported.
  s.pod_target_xcconfig = { 'DEFINES_MODULE' => 'YES', 'VALID_ARCHS[sdk=iphonesimulator*]' => 'x86_64' }
  s.swift_version = '5.0'
end
