# Private Cocoapods Developer repository for Tagove

This is a repository of Cocoapods which are ad-hoc/beta releases of the Tagove frontend bundle iOS SDK.

## Setup Guide

### [Add Private pod to your Podfile](https://guides.cocoapods.org/making/private-cocoapods.html#thats-it)

Example:

```
pod 'Tagove'            // For normal version
```

For xcode 8 or later:

1. Go to Project/Targets -> [Project Name] -> Build Settings.
2. search "ALWAYS_EMBED_SWIFT_STANDARD_LIBRARIES"
3. click the right of Debug, and selected 'Other', input "$(inherited)"
4. do same with 'Release' and install your pod

## Swift Example

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

## License

Tagove Cocoapods are distributed under [Apache License, Version 2.0](http://www.apache.org/licenses/LICENSE-2.0.html).

## Help

If you have any questions or comments, you can reach us at [raju@tagove.com](raju@tagove.com)

## Maintainers
  * [Raju Jangid](https://github.com/rajuj6)

## Help

If you have any questions or comments, you can reach us at [raju@tagove.com](raju@tagove.com)
