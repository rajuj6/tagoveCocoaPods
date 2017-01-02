# Private Cocoapods Developer repository for Tagove

This is a repository of Cocoapods which are ad-hoc/beta releases of the Tagove frontend bundle iOS SDK.

## Setup Guide

### [Add Private pod to your Podfile](https://guides.cocoapods.org/making/private-cocoapods.html#thats-it)

Example:

```
pod 'Tagove', '1.0.1'            // For normal version
```

For xcode 8 or later:

1. Go to Project/Targets -> [Project Name] -> Build Settings.
2. search "ALWAYS_EMBED_SWIFT_STANDARD_LIBRARIES"
3. click the right of Debug, and selected 'Other', input "$(inherited)"
4. do same with 'Release' and install your pod

In iOS 10, Before you access privacy-sensitive data like Camera, Microphone, and so on, you must ask for the authorization, or your app will crash when you access them.

Open the file in your project named `info.plist`, right click it, opening as Source Code, paste this code below to it. Or you can open  `info.plist` as `Property List` by default, click the add button, Xcode will give you the suggest completions while typing Privacy - with the help of keyboard and 

Remember to write your description why you ask for this authorization, between  `<string>` and `</string>`, or your app will be rejected by apple:

```
<!-- Camera -->
<key>NSCameraUsageDescription</key>
<string>$(PRODUCT_NAME) use camera for video chat</string>

<!-- Microphone -->
<key>NSMicrophoneUsageDescription</key>
<string>$(PRODUCT_NAME) use microphone for voice chat</string>

<!-- Photo Library -->
<key>NSPhotoLibraryUsageDescription</key>
<string>$(PRODUCT_NAME) send photo/video to agent</string>

```

## Swift Example
Note: Requires Swift 2.3, 3.0/Xcode 8.x

```
import Tagove

func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        ...
        Tagove.sharedObject().initForAccount("YOUR_ACCOUNT_UID", withOptions: nil)
        ...
        return true
    }
```
Use in Controller

```
import Tagove


//Call this method to open support view

Tagove.sharedObject().showSupport(self)

```

## Objective-C Example

```
#import <Tagove/Tagove.h>

...

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    ...
    [[Tagove sharedObject] initForAccount:@"YOUR_ACCOUNT_UID" withOptions:nil]; //Required for init support
    ...

    return YES;
}

```
Use in Controller:

```
#import <Tagove/Tagove.h>


//Call this method to open support view

[[Tagove sharedObject] showSupport:self];

```

Initilize Tagove chat with global system button 

```
// (Use .png format 30x30 px image)

[[Tagove sharedObject] initForAccount:"YOUR_ACCOUNT_UID" buttonImage:(UIImage *)image withOptions:nil];

```

## Methods

- `initForAccount: withOptions:` - This is init method for initilize Tagove chat. When you calling initForAccount method you must pass one accountUID parameter Option can be `nil`.

- `initForAccount: buttonImage: withOptions:` - This is init method for initilize Tagove chat with system button bottom right. When you calling this method you must pass accountUID and buttonImage `UIImage` parameter Option can be `nil`.

- `setVisitorIdentifier:` - Set an visitor identifier for your visitor, can be tracked by admin.

- `setVisitor: andEmail:` - Set the name and email of the app visitor.

- `showSupport:` - Show support view controller from current viewcontroller, will call after initForAccount method done. This method must pass a valid viewController instance.

- `getUnreadCount` - Total unread count of message(s).

- `getAvailableAgentCount` - Total unread count of message(s).

##  Protocol

`TagoveDelegate`

`Optional`

- `changeConnectionStatus:` - When device and tagove server connection state change. One parameter is status (ConnectionStatus enum).

- `changeAgentStatus: andStatus:` - When any agent status update. First paramater is agentID and second is status (AgentStatus enum).

- `updateUnreadCount:` - When receive chat message count will be increase. First paramater is integer count of unread message(s).

Note: If you call methos `showSupport:` method on `ConnectionStatus.connecting` status then it will show error in Log `Tagove Error! Session not started yet.`

## License

Tagove Cocoapods are distributed under [Apache License, Version 2.0](http://www.apache.org/licenses/LICENSE-2.0.html).

## Help

If you have any questions or comments, you can reach us at [raju at tagove dot com](https://github.com/rajuj6)

## Maintainers
  * [Raju Jangid](https://github.com/rajuj6)
