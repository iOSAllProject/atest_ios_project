//
//  SimpleNotificationView.h
//  Candy Cart
//
//  Created by Mr Kruk (kruk8989@gmail.com)  http://codecanyon.net/user/kruk8989 on 9/6/13.
//  Copyright (c) 2013 kruk. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SimpleNotificationView : UIView
{
    UIView *inView;
    BOOL isOpen;
    UILabel *closeLbl;
    NSTimer *timer;
    
}
@property (nonatomic, retain) UILabel *label;
@property (nonatomic,retain) UIImageView *closeBtn;
- (id)initWithFrame:(CGRect)frame andView:(UIView*)view;
-(void)showView:(NSString*)setText completed:(void (^)())block;
-(void)closeView;
@end
