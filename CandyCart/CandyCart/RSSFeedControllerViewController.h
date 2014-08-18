//
//  RSSFeedControllerViewController.h
//  Candy Cart
//
//  Created by Mr Kruk (kruk8989@gmail.com)  http://codecanyon.net/user/kruk8989 on 8/26/13.
//  Copyright (c) 2013 kruk. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface RSSFeedControllerViewController : UIViewController<UIScrollViewDelegate>
{
    MGScrollView *scroller;
    NSArray *info;
}
-(void)setRSSInfo:(NSArray*)info;
@end
