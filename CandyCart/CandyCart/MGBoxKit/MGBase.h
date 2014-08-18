//
//  Created by matt on 24/08/12.
//

typedef void(^Block)();
typedef void(^BlockWithContext)(id context);

#define CLAMP(x,low,high) (((x) > (high)) ? (high) : (((x) < (low)) ? (low) : (x)))

#import "MGBlockWrapper.h"
#import "UIView+MGEasyFrame.h"
#import "NSObject+MGEvents.h"
#import "UIControl+MGEvents.h"
#import "UIResponder+FirstResponder.h"
