//
//  AppDelegate.m
//  BackgroundFetch
//
//  Created by Dulio Denis on 5/8/14.
//  Copyright (c) 2014 ddApps. All rights reserved.
//

#import "AppDelegate.h"

@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    [application setMinimumBackgroundFetchInterval:UIApplicationBackgroundFetchIntervalMinimum];
    return YES;
}

- (void)application:(UIApplication *)application performFetchWithCompletionHandler:(void (^)(UIBackgroundFetchResult))completionHandler {
    NSLog(@"Background Fetch: Called in the background.");
    completionHandler(UIBackgroundFetchResultNewData);
}

@end
