Pod::Spec.new do |s|
  s.name         = "KClient"
  s.version      = "0.0.1"
  s.summary      = "Provides the Object-C API to connect with KCloud Server."
  s.homepage     = "https://github.com/tungpg/KClient"
  s.license      = 'MIT'
  s.author       = { "pgtung" => "pgtung@gmail.com" }
  s.source       = { :git => "https://github.com/tungpg/KClient.git" }
  s.platform     = :ios
  s.source_files = 'KClient/*.{h,m}'
  s.requires_arc = true
  s.dependency 'RestKit'
end