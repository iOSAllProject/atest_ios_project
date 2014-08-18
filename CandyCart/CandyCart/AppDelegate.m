//
//  AppDelegate.m
//  Candy Cart
//
//  Created by Mr Kruk (kruk8989@gmail.com)  http://codecanyon.net/user/kruk8989 on 7/1/13.
//  Copyright (c) 2013 kruk. All rights reserved.
//

#import "AppDelegate.h"

#import "LaunchViewController.h"

@implementation AppDelegate

static NSString *url = MAIN_URL;


+ (AppDelegate *) instance {
	return (AppDelegate *) [[UIApplication sharedApplication] delegate];
}


-(NSString*)getUrl{
    return url;
}

-(UIStatusBarStyle)preferredStatusBarStyle{
    return UIStatusBarStyleLightContent;
}

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    if([[DeviceClass instance] getOSVersion] == iOS7)
    {
    [NUISettings initWithStylesheet:@"CandyTheme_iOS7.NUI"];
    }
    else
    {
    [[UINavigationBar appearance]setShadowImage:[[UIImage alloc] init]];
     [NUISettings initWithStylesheet:@"CandyTheme_iOS6.NUI"];   
    }
    [NUIAppearance init];
    
    [[UIApplication sharedApplication] setStatusBarStyle:UIStatusBarStyleLightContent];
    
    LaunchViewController *launchView;
    //Create Launch ViewController
    launchView = [[LaunchViewController alloc] initWithNibName:@"LaunchViewController" bundle:nil];
    
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    self.window.rootViewController = launchView;
    [[MainViewClass instance] setRootViewController: self.window.rootViewController ];
    [[MainViewClass instance] setMainWindow:self.window];
    [self.window makeKeyAndVisible];
    
    
    [[MainViewClass instance] setLaunchOption:launchOptions];
  

    
    return YES;
}



- (void)applicationWillResignActive:(UIApplication *)application
{
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later. 
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
    
    SDImageCache *imageCache = [SDImageCache sharedImageCache];
    [imageCache clearMemory];
    
}



- (void)applicationDidBecomeActive:(UIApplication *)application
{
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application
{
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

- (void)application:(UIApplication *)application didRegisterForRemoteNotificationsWithDeviceToken:(NSData *)devToken {
	

    #if !TARGET_IPHONE_SIMULATOR
    
    NSString *deviceToken = [[[[devToken description]
                               stringByReplacingOccurrencesOfString:@"<"withString:@""]
                              stringByReplacingOccurrencesOfString:@">" withString:@""]
                             stringByReplacingOccurrencesOfString: @" " withString: @""];
  
    
    [[DataService instance] updatePushNotification:[[DeviceClass instance] getUUID] pushtoken:deviceToken];
  
    #endif
    
}

-(void)applicationDidReceiveMemoryWarning:(UIApplication *)application{
    
    NSLog(@"Warning : Memory Low");
}

- (void)application:(UIApplication *)application didReceiveRemoteNotification:(NSDictionary *)userInfo {
	
#if !TARGET_IPHONE_SIMULATOR
    NSLog(@"Got msgggg");
    //we handle all message inside class.. view more in PushedMsgClass.m
    [[PushedMsgClass instance] getPushNotificationMessage:userInfo needReloadRightView:YES];
    
        
    
#endif
}



@end
