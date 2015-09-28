Pod::Spec.new do |s|
  s.name     = 'CHBadgeView'
  s.version  = '1.0.1'
  s.platform = :ios, '8.0'
  s.license  = 'MIT'
  s.summary  = 'A simple iOS Badge view inspired by the Instagramm App.'
  s.authors   = { 'Clemens Hammerl' => 'beat84@me.com' }
  s.source   = { :git => 'https://github.com/beat843796/CHBadgeView.git', :tag => s.version.to_s }
  s.homepage = 'https://github.com/beat843796/CHBadgeView'
  s.description = 'CHbadgeView is an easy-to-use, clean and lightweight badge view for iOS.'

  s.source_files = 'CHBadgeView/CHBadgeView/*.{h,m}'
  s.requires_arc = true
end