Pod::Spec.new do |spec|
  spec.name         = 'AppBoot'
  spec.version      = '0.0.2'
  spec.license      = { :type => 'BSD' }
  spec.homepage     = 'https://github.com/skeyboy/AppBoot'
  spec.authors      = { 'skeyboy' => 'lylapp@163.com' }
  spec.summary      = 'iOS App dev tools'
  spec.source       = { :git => 'https://github.com/skeyboy/AppBoot.git', :tag => '#{spec.version}' }
  spec.source_files = 'AppBoot/Sources/**/*.{h,m,swift}'
  spec.framework    = 'UIKit'
  spec.dependency  'SnapKit'
end
