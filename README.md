Fantasy4All Installation Guide

Objective C

Get Started

Prerequisites

Use Xcode 8.0 or higher
Target iOS 8.0 or higher


1. Import F4A SDK

- Drag F4A.framework into your project folder

- Now, open Build Phases -> Link Binary With Libraries. And click on '+' button.

- Then click on "Add Other" instead of adding the default framework.

- Make Sure F4A.framework added in both "Embedded Binaries" and "Linked Framework and Libraries"

Now, you have added framework successfully. That's it.

You have to set the NSAllowsArbitraryLoads key to YES under NSAppTransportSecurity dictionary in your .plist file.

<key>NSAppTransportSecurity</key>

<dict>

<key>NSAllowsArbitraryLoads</key>

<true/>

</dict>



2. Initialize F4A

Apps should initialize the F4A SDK by calling the

InitializeWithGameID

class method in FantasyManager and passing it their GameID and APIKey



Here's an example of how to call the InitializeWithGameID: method in your AppDelegate.h:

#import <F4A/FantasyManager.h>



- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {

[[FantasyManager FantasyBegin] InitializeWithGameID:@"xxxx" APIKey:@"xxxxx"];

return YES;

}



3. Start F4A Game

Apps should initialize the F4A SDK by calling the

FantasyBegin class method in FantasyManager



Here's an example of how to Start F4A FantasyBegin: method in your MyViewController.h



#import <F4A/FantasyManager.h>



- (void)viewDidLoad {

[[FantasyManager FantasyBegin] InView: self];

}

Now you can see one floating f4A button over your MyViewController.

Click on that button brings you to the fantasy game.





4. Update Your Player Score in  F4A Game

Apps should initialize the F4A SDK by calling the

FantasyBegin class method in FantasyManager



Here's an example of how to Start F4A FantasyBegin: method in your PlayFinishedViewController.h



#import <F4A/FantasyManager.h>



- (void)GameCompleted {

NSString *GetMatchId=[FantasyManager FantasyBegin].GetCurrentMatchID;

[[FantasyManager FantasyBegin] UpdateWithGameScore:@""  WithMatchID:GetMatchId InView:self];

}














