//
//  MiscInstances.m
//  Candy Cart
//
//  Created by Mr Kruk (kruk8989@gmail.com)  http://codecanyon.net/user/kruk8989 on 7/15/13.
//  Copyright (c) 2013 kruk. All rights reserved.
//

#import "MiscInstances.h"

@implementation MiscInstances
+ (MiscInstances *) instance {
    static MiscInstances *sharedInstance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        sharedInstance = [[self alloc] init];
    });
    
    return sharedInstance;
}

-(void)setLoadMoreUILabel:(UILabel*)lbl{
    
    loadmorelbl = lbl;
}

-(UILabel*)getLoadMoreUILabel
{
    return loadmorelbl;
}


-(void)setLoadMoreActivityView:(UIActivityIndicatorView*)act{
    
    loadmoreActivity = act;
}

-(UIActivityIndicatorView*)getLoadMoreActivityView
{
    return loadmoreActivity;
}

@end
