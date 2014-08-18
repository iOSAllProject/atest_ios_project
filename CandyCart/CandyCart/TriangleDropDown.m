//
//  TriangleDropDown.m
//  Candy Cart
//
//  Created by Mr Kruk (kruk8989@gmail.com)  http://codecanyon.net/user/kruk8989 on 7/9/13.
//  Copyright (c) 2013 kruk. All rights reserved.
//

#import "TriangleDropDown.h"

@implementation TriangleDropDown

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
        //[self drawRect:frame];
        self.backgroundColor = [UIColor clearColor];
        
        
    }
    return self;
}
-(void)rotateToDown{
    
    CGAffineTransform transform = CGAffineTransformMakeRotation(M_PI_2);
    self.transform = transform;
    
    // Repositions and resizes the view.
    CGRect contentRect = self.frame;
    self.bounds = contentRect;
}
-(void)setColor:(UIColor*)color{
    
    colors = color;
}

-(void)drawRect:(CGRect)rect
{
    CGContextRef ctx = UIGraphicsGetCurrentContext();
    
    CGContextBeginPath(ctx);
    CGContextMoveToPoint   (ctx, CGRectGetMinX(rect), CGRectGetMinY(rect));  // top left
    CGContextAddLineToPoint(ctx, CGRectGetMaxX(rect), CGRectGetMidY(rect));  // mid right
    CGContextAddLineToPoint(ctx, CGRectGetMinX(rect), CGRectGetMaxY(rect));  // bottom left
  
   
  
    //CGContextSetRGBFillColor(ctx, 1, 1, 1, 1);
    CGContextSetFillColorWithColor(ctx, colors.CGColor);
    CGContextFillPath(ctx);
 
    // draw triangle
    //CGContextRestoreGState(ctx);
    
     CGContextClosePath(ctx);
}
@end
