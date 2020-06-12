Pod::Spec.new do |s|
    s.platforms = { :ios => "13.0", :osx => "10.15", :watchos => "6.0", :tvos => "13.0" }
    s.name = "ESDateHelper"
    s.summary = "ESDateHelper swift 5.2 Date extension framework for simple development amazing apps."
    s.requires_arc = true
    s.version = "1.0.0"
    s.license = { :type => "MIT", :file => "LICENSE" }
    s.author = { "Emil Karimov" => "emvakar@gmail.com" }
    s.homepage = "https://github.com/ESKARIA/ESDateHelper.git"
    s.source = { :git => "https://github.com/ESKARIA/ESDateHelper.git", :tag => "#{s.version}"}
    s.framework = "UIKit"
    s.source_files = "Sources/ESDateHelper/**/*.{swift}"
    s.resources = "Sources/ESDateHelper/**/*.{png,jpeg,jpg,storyboard,xib}"
    s.swift_version = "5.2"
    
#####
# Waiting swift 5.3 for use bundle
#####
#    s.resource_bundles = {
#        'ESDateHelperAssets' => ['Sources/ESDateHelper/**/*.xcassets']
#    }
end
