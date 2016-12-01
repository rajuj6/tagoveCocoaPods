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

## License

Tagove Cocoapods are distributed under [Apache License, Version 2.0](http://www.apache.org/licenses/LICENSE-2.0.html).

## Help

If you have any questions or comments, you can reach us at [raju@tagove.com](raju@tagove.com)

## Maintainers
  * [Raju Jangid](https://github.com/rajuj6)

## Help

If you have any questions or comments, you can reach us at [raju@tagove.com](raju@tagove.com)
