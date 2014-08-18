//
//  InstagramNativeDetailViewController.h
//  Candy Cart
//
//  Created by Mr Kruk (kruk8989@gmail.com)  http://codecanyon.net/user/kruk8989 on 8/29/13.
//  Copyright (c) 2013 kruk. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface InstagramNativeDetailViewController : UIViewController<UIScrollViewDelegate>
{
    MGScrollView *scroller;
    MPMoviePlayerController *player;
    NSDictionary *postInfo;
}
-(void)setPostInfo:(NSDictionary*)pInfo;
@end
