//
//  PostByCategoryViewController.h
//  Candy Cart
//
//  Created by Mr Kruk (kruk8989@gmail.com)  http://codecanyon.net/user/kruk8989 on 8/24/13.
//  Copyright (c) 2013 kruk. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "WpPostBox.h"
#import "PostDetailViewController.h"
#import "PlainPostDetailViewController.h"
@interface PostByCategoryViewController : UIViewController<UIScrollViewDelegate>
{
    MGScrollView *scroller;
    NSDictionary *postDictionary;
    CGPoint initialContentOffset;
    int totalPage;
    int currentPage;
    float fixedHeight;
    BOOL processing;
}
-(void)setPostDictionary:(NSDictionary*)postDictionarys;
@end
