//
//  CommentViewController.h
//  Candy Cart
//
//  Created by Mr Kruk (kruk8989@gmail.com)  http://codecanyon.net/user/kruk8989 on 7/29/13.
//  Copyright (c) 2013 kruk. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "MGScrollView.h"
#import "MGTableBoxStyled.h"
#import "MGLineStyled.h"
#import "PhotoBox.h"
#import "DEComposeViewController.h"
#import "ChildCommentViewController.h"
@interface CommentViewController : UIViewController<UIScrollViewDelegate,MBProgressHUDDelegate>
{
    MGScrollView *scroller;
     CGPoint initialContentOffset;
    NSDictionary *productReview;
    UIActivityIndicatorView *spinner;
    MBProgressHUD *HUD;
    
}
@property(nonatomic,retain) NSString* postID;
@end
