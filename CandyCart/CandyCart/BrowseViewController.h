//
//  BrowseViewController.h
//  Candy Cart
//
//  Created by Mr Kruk (kruk8989@gmail.com)  http://codecanyon.net/user/kruk8989 on 7/1/13.
//  Copyright (c) 2013 kruk. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "UIImage+StackBlur.h"
#import "BrowseDetailViewController.h"
#import "CameraViewController.h"
@interface BrowseViewController : UIViewController<UITableViewDataSource,UITableViewDelegate,UISearchBarDelegate>
{
    CGPoint initialContentOffset;
    UITableView *tblView;
    NSArray *aryDic;
    UIView *searchLayer;
    UISearchBar *productSearchBar;
    UIImageView* blurView;
    
}
@end
