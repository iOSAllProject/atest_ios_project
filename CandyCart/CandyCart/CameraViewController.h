//
//  CameraViewController.h
//  Candy Cart
//
//  Created by Mr Kruk (kruk8989@gmail.com)  http://codecanyon.net/user/kruk8989 on 7/5/13.
//  Copyright (c) 2013 kruk. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ZBarSDK.h"
@interface CameraViewController : UIViewController<ZBarReaderViewDelegate,MBProgressHUDDelegate>
{
    ZBarReaderView *readerView;
     ZBarCameraSimulator *cameraSim;
     MBProgressHUD *HUD;
}
@property (nonatomic, retain) IBOutlet ZBarReaderView *readerView;
@end
