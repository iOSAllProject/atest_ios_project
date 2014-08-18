//
//  PlainPostDetailViewController.h
//  Candy Cart
//
//  Created by Mr Kruk (kruk8989@gmail.com)  http://codecanyon.net/user/kruk8989 on 8/23/13.
//  Copyright (c) 2013 kruk. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface PlainPostDetailViewController : UIViewController<UIWebViewDelegate,UIScrollViewDelegate,MBProgressHUDDelegate,socialMediaControllerDelegate,MFMailComposeViewControllerDelegate>
{
     UIWebView *webViewSe;
    NSDictionary *postInfo;
     MBProgressHUD *HUD;
    UIButton *shareBtn;
     FPPopoverController *sharePopOver;
}
-(void)setPostInfo:(NSDictionary*)postIn;
@end
