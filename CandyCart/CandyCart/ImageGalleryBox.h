//
//  ImageGalleryBox.h
//  Candy Cart
//
//  Created by Mr Kruk (kruk8989@gmail.com)  http://codecanyon.net/user/kruk8989 on 8/27/13.
//  Copyright (c) 2013 kruk. All rights reserved.
//

#import "MGBox.h"

@interface ImageGalleryBox : MGBox
+ (ImageGalleryBox *)imgThumb:(CGSize)size img:(NSString*)url;
@end
