//
//  WpPostBox.h
//  Candy Cart
//
//  Created by Mr Kruk (kruk8989@gmail.com)  http://codecanyon.net/user/kruk8989 on 8/24/13.
//  Copyright (c) 2013 kruk. All rights reserved.
//

#import "MGBox.h"

@interface WpPostBox : MGBox
+(WpPostBox *)onBrowseTemplateTitleImgDesc:(NSString*)featuredImage; // Template 1
+(WpPostBox *)onBrowseTemplateImgTitleDate:(NSString*)featuredImage title:(NSString*)pTitle ago:(NSString*)ago; // Template 2
+ (WpPostBox *)timeAgo:(NSString*)label;
@end
