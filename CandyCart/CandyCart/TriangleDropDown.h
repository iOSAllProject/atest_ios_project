//
//  TriangleDropDown.h
//  Candy Cart
//
//  Created by Mr Kruk (kruk8989@gmail.com)  http://codecanyon.net/user/kruk8989 on 7/9/13.
//  Copyright (c) 2013 kruk. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface TriangleDropDown : UIView
{
    UIColor *colors;
}
-(void)setColor:(UIColor*)color;
-(void)rotateToDown;
@end
