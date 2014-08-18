//
//  AppDelegate.h
//  Candy Cart
//
//  Created by Mr Kruk (kruk8989@gmail.com)  http://codecanyon.net/user/kruk8989 on 7/1/13.
//  Copyright (c) 2013 kruk. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "NUIAppearance.h"

@interface AppDelegate : UIResponder <UIApplicationDelegate, UITabBarControllerDelegate>
{
   
}
@property (strong, nonatomic) UIWindow *window;

@property (strong, nonatomic) UITabBarController *tabBarController;
+ (AppDelegate *) instance;
-(NSString*)getUrl;

@end
