 
require 'json'

package = JSON.parse(File.read('package.json'))

Pod::Spec.new do |s|
  s.name                = 'RNPhotoEditor'
  s.version             = package['version']
  s.summary             = package['description']
  s.description         = package['description']
  s.homepage            = package['homepage']
  s.license             = package['license']
  s.author              = package['author']
  s.source              = { :git => 'https://github.com/ttconduct/react-native-photo-editor.git' }
  s.platform              = :ios, '9.0'
  s.ios.deployment_target = '9.0'
  s.source_files        = 'ios/**/*.{h,m}'
  s.dependency 'iOSPhotoEditor'
end
