//
//  BillingCheckOutViewController.h
//  Candy Cart
//
//  Created by Mr Kruk (kruk8989@gmail.com)  http://codecanyon.net/user/kruk8989 on 8/10/13.
//  Copyright (c) 2013 kruk. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "CountriesMenuViewController.h"
#import "ReviewCheckOutViewController.h"
#import "SZTextView.h"
@interface ShippingCheckOutViewController : UIViewController<UITextFieldDelegate,UIScrollViewDelegate,MBProgressHUDDelegate>
{
    CGPoint initialContentOffset;
    CGPoint svos;
    CGRect currentRect;
    
    MBProgressHUD *HUD;
    NSMutableDictionary *userData;
    UIScrollView *scrollView;
    UIButton *shipping_update_same_as_billing;
    UITextField *shipping_firstname;
    UITextField *shipping_lastname;
    UITextField *shipping_company;
    UITextField *shipping_address_1;
    UITextField *shipping_address_2;
    UITextField *shipping_postcode;
    UITextField *shipping_city;
    UITextField *shipping_state;
    NSString *shipping_state_code;
    BOOL shipping_state_has_state;
    UITextField *shipping_country;
    NSString *shipping_country_code;
    
    SZTextView *purchaseNote;
    
    UIButton *shipping_update;

}
-(void)updateCountryTextField:(NSString*)countryName countryCode:(NSString*)countryCode;
-(void)updateStateTextField:(NSString*)stateName stateCode:(NSString*)stateCode;
-(void)updateStateTextFieldNoState;
@end
