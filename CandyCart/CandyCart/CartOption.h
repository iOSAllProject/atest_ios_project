//
//  CartOption.h
//  Candy Cart
//
//  Created by Mr Kruk (kruk8989@gmail.com)  http://codecanyon.net/user/kruk8989 on 7/9/13.
//  Copyright (c) 2013 kruk. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "TriangleDropDown.h"
#import "FPPopoverController.h"
#import "ARCMacros.h"
#import "MenuViewController.h"
#import "UserDataTapGestureRecognizer.h"
@interface CartOption : NSObject<UIWebViewDelegate>
{
    UILabel *dropDownMenuContainer;
    NSArray *menuItems;
    float getHeight;
}
+ (CartOption *) instance;
-(UILabel*)header:(NSString*)placeholder rect:(CGRect)rect;
-(UILabel*)addDropDownMenu:(CGRect)rect placeholder:(NSString*)placeholder menuItem:(NSArray*)ary;
-(UIButton*)addToCartButton:(CGRect)frame;
-(UIWebView*)productDesc:(NSString*)html frame:(CGRect)rect;
-(float)getWebViewHeight;
-(UIView*)productsYouMayLikeHeader:(CGRect)rect placeHolder:(NSString*)str;
-(UIScrollView*)productYouMayLikeScrollView:(CGRect)rect;
@end
