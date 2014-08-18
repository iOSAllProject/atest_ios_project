//
//  CartViewController.h
//  Candy Cart
//
//  Created by Mr Kruk (kruk8989@gmail.com)  http://codecanyon.net/user/kruk8989 on 7/1/13.
//  Copyright (c) 2013 kruk. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "MGScrollView.h"
#import "MGTableBoxStyled.h"
#import "MGLineStyled.h"
#import "MyCartBox.h"
#import "DetailViewController.h"
#import "BillingCheckOutViewController.h"
@interface CartViewController : UIViewController<UIScrollViewDelegate,MBProgressHUDDelegate>
{
    MGScrollView *scroller;
    MBProgressHUD *HUD;
    CGPoint initialContentOffset;
}
@end
