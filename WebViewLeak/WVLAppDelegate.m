//
//  WVLAppDelegate.m
//  WebViewLeak
//
//  Created by omochimetaru on 13/03/15.
//  Copyright (c) 2013年 omochimetaru All rights reserved.
//

#import "WVLAppDelegate.h"

#import "WVLViewController.h"

@implementation WVLAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
	self.window.rootViewController = [[WVLViewController alloc] initWithNibName:@"WVLViewController" bundle:nil];
    [self.window makeKeyAndVisible];
    return YES;
}

@end
