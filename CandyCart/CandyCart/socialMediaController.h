//
//  MenuViewController.h
//  Candy Cart
//
//  Created by Mr Kruk (kruk8989@gmail.com)  http://codecanyon.net/user/kruk8989 on 7/9/13.
//  Copyright (c) 2013 kruk. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <Social/Social.h>
#import <MessageUI/MessageUI.h>

@protocol socialMediaControllerDelegate
-(void)didChooseEmail;
@end

@class DetailViewController;
@class FPPopoverController;
@interface socialMediaController : UITableViewController<MFMailComposeViewControllerDelegate>
{
    UITableView *tblView;
    NSArray *menuItems;
    NSString *url;
    DetailViewController *de;
    FPPopoverController *pop;
    
     id <socialMediaControllerDelegate> delegate;
}
@property (retain, nonatomic) id <socialMediaControllerDelegate> delegate;
-(void)setUrl:(NSString*)productURL;

@end
