Pod::Spec.new do |s|
    s.name              = 'Tagove'
    s.version           = '1.0.2'
    s.summary           = 'Next Generation Customer Support Software'
    s.license           = { :type => 'Commercial', :text => 'Copyright (C) 2016 by Tagove' }
    s.homepage          = 'https://www.tagove.com/'
    s.author            = {'Tagove' => 'hello@tagove.com'}
    s.source            = {:http => 'https://developer.tagove.com/sdk/tagove-sdk-ios-v1.0.zip', :type => :zip}
    s.platforms         = {:ios => '8.0'}
    s.source_files      = 'tagove-sdk-ios-v1.0/Tagove.framework/headers/*.h'
    s.preserve_paths    = 'tagove-sdk-ios-v1.0/Tagove.framework', 'tagove-sdk-ios-v1.0/Tagove.framework/TagoveTheme/*.plist'
    s.ios.vendored_frameworks = 'tagove-sdk-ios-v1.0/Tagove.framework'
    s.framework        = 'Tagove'
    s.frameworks        = 'Tagove','Foundation', 'UIKit', 'CoreGraphics'
    s.xcconfig          = {'FRAMEWORK_SEARCH_PATHS' => '"$(PODS_ROOT)/Tagove/tagove-sdk-ios-v1.0"', 'LD_RUNPATH_SEARCH_PATHS' => '@loader_path/../Frameworks', 'ENABLE_BITCODE'=> 'NO', 'EMBEDDED_CONTENT_CONTAINS_SWIFT' => 'YES', 'ALWAYS_EMBED_SWIFT_STANDARD_LIBRARIES' => 'YES'}
    s.requires_arc      = true
end
