//
//  ExploreViewController.h
//  Candy Cart
//
//  Created by Mr Kruk (kruk8989@gmail.com)  http://codecanyon.net/user/kruk8989 on 7/1/13.
//  Copyright (c) 2013 kruk. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "MGScrollView.h"
#import "MGTableBoxStyled.h"
#import "MGLineStyled.h"
#import "PhotoBox.h"
#import "SDSegmentedControl.h"

#import "DetailViewController.h"
@interface ExploreViewController : UIViewController<UIScrollViewDelegate,UIGestureRecognizerDelegate,UIWebViewDelegate,MBProgressHUDDelegate>
{
    MGScrollView *scroller;
    CGPoint initialContentOffset;
    SDSegmentedControl *segmentedControl;
    UIWebView *webView;
    UIActivityIndicatorView *ind;
    MBProgressHUD *HUD;
    NSMutableArray *itemsArray;
}
@end
