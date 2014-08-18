//
//  RightViewController.h
//  Candy Cart
//
//  Created by Mr Kruk (kruk8989@gmail.com)  http://codecanyon.net/user/kruk8989 on 9/7/13.
//  Copyright (c) 2013 kruk. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface RightViewController : UIViewController<UITableViewDelegate,UITableViewDataSource>
{
  
     NSArray *menuItems;
    NSDictionary *fullInfo;
    UISegmentedControl *segmentControl;
}
@property(nonatomic,retain) UITableView *tbl;
-(void)setItems:(NSDictionary*)items;
@end
