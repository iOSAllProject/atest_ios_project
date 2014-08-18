//
//  PushedMsgClass.h
//  Candy Cart
//
//  Created by Mr Kruk (kruk8989@gmail.com)  http://codecanyon.net/user/kruk8989 on 9/3/13.
//  Copyright (c) 2013 kruk. All rights reserved.
//


typedef enum {
    NONE,
    POST,
    PAGE,
    PRODUCT,
    LINK,
    COMMENT,
    ORDERNOTES,
    STATUS_CHANGED
} kPushMsgType;
#define kPushMsgTypeArray @"none", @"post", @"page", @"product",@"link",@"comment",@"order_note",@"status_changed", nil


#import <Foundation/Foundation.h>
#import <MessageUI/MessageUI.h>
@interface PushedMsgClass : NSObject<MBProgressHUDDelegate,MFMailComposeViewControllerDelegate>
{
    NSString *currentPostID; // to save if once got msg and use later...
  
    NSString *currentBody;
    MBProgressHUD *HUD;
    UIViewController *currentController;
    
    
}
+ (PushedMsgClass *) instance;
-(void)getPushNotificationMessage:(NSDictionary*)userInfo needReloadRightView:(BOOL)needReload;
@end
