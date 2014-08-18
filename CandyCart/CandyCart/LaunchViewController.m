//
//  LaunchViewController.m
//  Candy Cart
//
//  Created by Mr Kruk (kruk8989@gmail.com)  http://codecanyon.net/user/kruk8989 on 8/19/13.
//  Copyright (c) 2013 kruk. All rights reserved.
//

#import "LaunchViewController.h"

#import "PPRevealSideViewController.h"
@interface LaunchViewController ()
{
    PPRevealSideViewController *revealSideViewController;
}
@end

@implementation LaunchViewController
@synthesize threadProgressView;
- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    [self.view setNuiClass:@"ViewInit"];
    // Do any additional setup after loading the view from its nib.
    [[TempVariables instance] setOnLounchProgress:threadProgressView];
    
    [self initApplication];
   
}


-(void)initApplication{
    
    dispatch_async(dispatch_get_global_queue( DISPATCH_QUEUE_PRIORITY_DEFAULT, 0), ^(void){
        //Load Data Service In Background
         [[DataService instance] loadAllData];
        
        dispatch_async(dispatch_get_main_queue(), ^(void){
          
            
            //Load UI After Data Service Loaded
           [[MyCartClass instance] initMyCart];
           [[MainViewClass instance] loadMainController];
           //[MainViewClass instance].tabBarController.modalTransitionStyle = UIModalTransitionStyleCrossDissolve;
       
      
            
          revealSideViewController = [[PPRevealSideViewController alloc] initWithRootViewController:[MainViewClass instance].tabBarController];
            revealSideViewController.delegate = self;
            
            [revealSideViewController setDirectionsToShowBounce:PPRevealSideDirectionNone];
            [revealSideViewController setPanInteractionsWhenClosed:PPRevealSideInteractionNavigationBar];
            
            LeftViewController *left = [[LeftViewController alloc] init];
            
            [left setMenuItems:[[[DataService instance] leftMenuData] objectForKey:@"menu"] hideNavBar:YES];
            UINavigationController *leftNav = [[UINavigationController alloc] initWithRootViewController:left];
            leftNav.navigationBar.translucent = NO;
            [revealSideViewController preloadViewController:leftNav forSide:PPRevealSideDirectionLeft];
            
            
            RightViewController *right = [[RightViewController alloc] init];
            [right setItems:[DataService instance].pushNotifications];
            UINavigationController *rightNav = [[UINavigationController alloc] initWithRootViewController:right];
            rightNav.navigationBar.translucent = NO;
            
            
            
            
            
            [revealSideViewController preloadViewController:rightNav forSide:PPRevealSideDirectionRight];
            
            [MainViewClass instance].rightView = right;
            
            revealSideViewController.modalTransitionStyle = UIModalTransitionStyleCrossDissolve;
            [[MainViewClass instance] setPPReavealController:revealSideViewController];
            
            
            
            
            [[MainViewClass instance] initNotification:[[MainViewClass instance] getCurrentMainWindow]];
            
            
           
            [self presentViewController:revealSideViewController animated:YES completion:^{
            
                
                NSDictionary* userInfo = [[[MainViewClass instance] getLaunchOption] valueForKey:@"UIApplicationLaunchOptionsRemoteNotificationKey"];
                NSDictionary *apsInfo = [userInfo objectForKey:@"aps"];
                
                
                NSString *messageBody = [[apsInfo objectForKey:@"alert"] objectForKey:@"body"];
                
                if([messageBody length] > 0)
                {
                
                [[PushedMsgClass instance] getPushNotificationMessage:userInfo needReloadRightView:NO];
                
                }
                NSDictionary *setting = [[SettingDataClass instance] getSetting];
                
                if([[[setting objectForKey:@"store_notification"] objectForKey:@"isON"] isEqualToString:@"yes"])
                {
                    NSString * str = [NSString stringWithFormat:@"%@",[[setting objectForKey:@"store_notification"] objectForKey:@"notice"]];
                UIAlertView *alert = [[UIAlertView alloc]initWithTitle: NSLocalizedString(@"general_notification_title", nil)
                                                               message:str
                                                              delegate: self
                                                     cancelButtonTitle:nil
                                                     otherButtonTitles:@"OK",nil];
                
                
                [alert show];
                }
                
                           
            }];
            
            
            
       
       });
        
    });

    
    
}
- (void)pprevealSideViewController:(PPRevealSideViewController *)controller didPopToController:(UIViewController *)centerController {
    NSLog(@"Did Pop");
    
}
- (void)pprevealSideViewController:(PPRevealSideViewController *)controller didPushController:(UIViewController *)pushedController {
    NSLog(@"Did Push");
    
}

- (NSArray *)customViewsToAddPanGestureOnPPRevealSideViewController:(PPRevealSideViewController *)controller{
    
    NSArray *arr = [NSArray arrayWithObjects:[MainViewClass instance].exploreViewController.navigationController.navigationBar,[MainViewClass instance].browseViewController.navigationController.navigationBar,[MainViewClass instance].profileViewController.navigationController.navigationBar,[MainViewClass instance].cartViewController.navigationController.navigationBar, nil];
    
    return arr;
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
