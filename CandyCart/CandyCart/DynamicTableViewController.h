//
//  DynamicTableViewController.h
//  Candy Cart
//
//  Created by Mr Kruk (kruk8989@gmail.com)  http://codecanyon.net/user/kruk8989 on 8/4/13.
//  Copyright (c) 2013 kruk. All rights reserved.
//

#import <UIKit/UIKit.h>
@class ProfileViewController;
@class BillingCheckOutViewController;
@class ShippingCheckOutViewController;
@interface DynamicTableViewController : UITableViewController
{
    
    NSArray *menuItems;
    ProfileViewController *profileController;
    BillingCheckOutViewController *billingController;
    ShippingCheckOutViewController *shippingController;
    int chooseController;
}
-(void)setStateArray:(NSArray*)ary;
-(void)setProfileController:(ProfileViewController*)pro;
-(void)setBillingController:(BillingCheckOutViewController*)pro;
-(void)setShippingController:(ShippingCheckOutViewController*)pro;
@end
