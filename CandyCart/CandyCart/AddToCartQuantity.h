//
//  AddToCartQuantity.h
//  Candy Cart
//
//  Created by Mr Kruk (kruk8989@gmail.com)  http://codecanyon.net/user/kruk8989 on 8/7/13.
//  Copyright (c) 2013 kruk. All rights reserved.
//

#import <UIKit/UIKit.h>
@class DetailViewController;
@interface AddToCartQuantity : UITableViewController
{
    NSMutableArray *array;
    DetailViewController *detailController;
}
-(void)setTotalQuantity:(int)quantity setCurrentDetail:(DetailViewController*)det;
@end
