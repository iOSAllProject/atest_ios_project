//
//  MiscInstances.h
//  Candy Cart
//
//  Created by Mr Kruk (kruk8989@gmail.com)  http://codecanyon.net/user/kruk8989 on 7/15/13.
//  Copyright (c) 2013 kruk. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface MiscInstances : NSObject
{
    UILabel *loadmorelbl;
    UIActivityIndicatorView *loadmoreActivity;
}
+ (MiscInstances *) instance;
-(void)setLoadMoreUILabel:(UILabel*)lbl;
-(UILabel*)getLoadMoreUILabel;

-(void)setLoadMoreActivityView:(UIActivityIndicatorView*)act;
-(UIActivityIndicatorView*)getLoadMoreActivityView;
@end
