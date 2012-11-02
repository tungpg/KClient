Pod::Spec.new do |s|
  s.name         = "KClient"
  s.version      = "0.0.1"
  s.summary      = "Provides the Object-C API to connect with KCloud Server."
  s.homepage     = "https://subversion.assembla.com/svn/kcloud/trunk/iOS/KClient/"
  s.license      = 'MIT'
  s.author       = { "stevenpsmith" => "ssmith@chariotsolutions.com" }
  s.source       = { :svn => "https://subversion.assembla.com/svn/kcloud/trunk/iOS/KClient/" }
  s.platform     = :ios
  s.source_files = 'KClient/*.{h,m}'
  s.requires_arc = true
  s.dependency 'RestKit'
end