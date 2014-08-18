//
//  InstagramDetailWebView.h
//  Candy Cart
//
//  Created by Mr Kruk (kruk8989@gmail.com)  http://codecanyon.net/user/kruk8989 on 8/28/13.
//  Copyright (c) 2013 kruk. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface InstagramDetailWebView : UIViewController<UIScrollViewDelegate,UIWebViewDelegate>
{
    UIWebView *webViewSe;
    NSString *urls;
    CGPoint initialContentOffset;
    NSString *mediaID;
}
-(void)loadUrlInWebView:(NSString*)url mediaID:(NSString*)mediaID;
@end
