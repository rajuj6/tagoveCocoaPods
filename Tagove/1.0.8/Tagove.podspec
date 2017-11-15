Pod::Spec.new do |s|
s.name                      = 'Tagove'
s.version                   = '1.0.8'
s.summary                   = 'Next Generation Customer Support Software'
s.license                   = { :type => 'Commercial', :text => 'Copyright (C) 2017 by Tagove' }
s.homepage                  = 'https://www.tagove.com/'
s.author                    = {'Raju Jangid' => 'raju@tagove.com'}
s.social_media_url          = 'https://twitter.com/tagove_'
s.source                    = {:http => 'https://developers.tagove.com/sdk/tagove-sdk-ios-v1.0.zip', :type => :zip}
s.platforms                 = {:ios => '8.0'}
s.screenshots               = [ 'https://developers.tagove.com/sdk/screenshots/agent_screen.png',
                                'https://developers.tagove.com/sdk/screenshots/chat_screen.png',
                                'https://developers.tagove.com/sdk/screenshots/share_screen_request.png',
                                'https://developers.tagove.com/sdk/screenshots/video_screen.png']
s.source_files              = 'tagove-sdk-ios-v1.0/Tagove.framework/headers/*.h'
s.preserve_paths            = 'tagove-sdk-ios-v1.0/Tagove.framework', 'tagove-sdk-ios-v1.0/Tagove.framework/TagoveTheme/*.plist', 'tagove-sdk-ios-v1.0/Tagove.framework/README.md'
s.ios.vendored_frameworks   = 'tagove-sdk-ios-v1.0/Tagove.framework'
s.vendored_frameworks       = 'tagove-sdk-ios-v1.0/Tagove.framework/WebRTC.framework'
s.framework                 = 'Tagove'
s.frameworks                = 'Tagove','Foundation', 'UIKit', 'CoreGraphics'
s.xcconfig                  = {'FRAMEWORK_SEARCH_PATHS' => '"$(PODS_ROOT)/Tagove/tagove-sdk-ios-v1.0"', 'LD_RUNPATH_SEARCH_PATHS' => '@loader_path/../Frameworks', 'ENABLE_BITCODE'=> 'NO',                             'EMBEDDED_CONTENT_CONTAINS_SWIFT' => 'YES', 'ALWAYS_EMBED_SWIFT_STANDARD_LIBRARIES' => 'YES'}
s.requires_arc              = true
s.documentation_url         = 'https://developers.tagove.com/ios-sdk-api.php'
end
