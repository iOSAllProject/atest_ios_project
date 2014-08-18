//
//  PostDetailViewController.h
//  Candy Cart
//
//  Created by Mr Kruk (kruk8989@gmail.com)  http://codecanyon.net/user/kruk8989 on 8/23/13.
//  Copyright (c) 2013 kruk. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MessageUI/MessageUI.h>
#import <SystemConfiguration/SystemConfiguration.h>
#import <MobileCoreServices/MobileCoreServices.h>
#import "MDCParallaxView.h"
#import "socialMediaController.h"
@interface PostDetailViewController : UIViewController<UIScrollViewDelegate,UIWebViewDelegate,MBProgressHUDDelegate,MFMailComposeViewControllerDelegate,IDMPhotoBrowserDelegate,socialMediaControllerDelegate>
{
    MDCParallaxView *parallaxView;
     MBProgressHUD *HUD;
    UIView *topView;
    UIView *bottomView;
    NSDictionary *post;
    UIScrollView *imgScrollView;
     int current_index_image;
    UIButton *shareBtn;
    UIWebView *bottomWeb;
    FPPopoverController *sharePopOver;
}
-(void)setPostDictionary:(NSDictionary*)setPost;
@end
