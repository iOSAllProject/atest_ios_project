//
//  ImageGalleryThumbController.h
//  Candy Cart
//
//  Created by Mr Kruk (kruk8989@gmail.com)  http://codecanyon.net/user/kruk8989 on 8/27/13.
//  Copyright (c) 2013 kruk. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ImageGalleryBox.h"
@interface ImageGalleryThumbController : UIViewController<UIScrollViewDelegate,IDMPhotoBrowserDelegate>
{
    MGScrollView *scroller;
    NSArray *info;
    NSMutableArray *photos;
}
-(void)setImageInfo:(NSArray*)setInfo;
@end
