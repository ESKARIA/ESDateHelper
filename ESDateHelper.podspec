Pod::Spec.new do |s|
    s.platforms = { :ios => "11.0", :osx => "10.12", :watchos => "5.0", :tvos => "11.0" }
    s.name = "ESDateHelper"
    s.summary = "ESDateHelper swift 5.2 Date extension framework for simple development amazing apps."
    s.requires_arc = true
    s.version = "2.0.0"
    s.license = { :type => "MIT", :file => "LICENSE" }
    s.author = { "Emil Karimov" => "emvakar@gmail.com" }
    s.homepage = "https://github.com/ESKARIA"
    s.social_media_url = 'https://www.facebook.com/emvakar'
    s.source = { :git => "https://github.com/ESKARIA/ESDateHelper.git", :tag => "#{s.version}"}
    s.framework = "Foundation"
    s.source_files = "Sources/ESDateHelper/**/*.{swift}"
    s.swift_version = "5.2"
end
