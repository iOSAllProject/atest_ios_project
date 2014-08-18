//
//  MenuViewController.h
//  Candy Cart
//
//  Created by Mr Kruk (kruk8989@gmail.com)  http://codecanyon.net/user/kruk8989 on 7/9/13.
//  Copyright (c) 2013 kruk. All rights reserved.
//

#import <UIKit/UIKit.h>
@class DetailViewController;
@class ReviewCheckOutViewController;
@interface MenuViewController : UITableViewController
{
    UITableView *tblView;
    NSArray *menuItems;
    UILabel* lblToSend;
    NSString *termName;
    DetailViewController *det;
    ReviewCheckOutViewController *review;
}
-(void)setArray:(NSArray*)ary;
-(void)setTermNa:(NSString*)ter;
-(void)setLabelToSend:(UILabel*)lbl;
-(void)setDetailController:(DetailViewController*)deti;
-(void)setReviewController:(ReviewCheckOutViewController*)deti;
@end
