//
//  NoInternetViewController.h
//  Candy Cart
//
//  Created by Mr Kruk (kruk8989@gmail.com)  http://codecanyon.net/user/kruk8989 on 9/28/13.
//  Copyright (c) 2013 kruk. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface NoInternetViewController : UIViewController
@property(nonatomic,retain) IBOutlet UILabel *desc;
@property(nonatomic,retain) IBOutlet UIButton *tryAgain;
-(IBAction)tryAgainAction:(id)sender;
@end
