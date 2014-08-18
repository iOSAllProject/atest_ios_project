//
//  UserAuth.h
//  Candy Cart
//
//  Created by Mr Kruk (kruk8989@gmail.com)  http://codecanyon.net/user/kruk8989 on 8/2/13.
//  Copyright (c) 2013 kruk. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface UserAuth : NSObject
{
    bool alreadyLogged;
}
@property(nonatomic,retain) NSMutableDictionary *userData;
@property(nonatomic,retain) NSString *username;
@property(nonatomic,retain) NSString *password;

+ (UserAuth *) instance;
-(void)setUserDatas:(NSDictionary *)source;
-(void)saveAuthorizedStatus:(NSString*)usernameCopy password:(NSString*)passwordCopy;
-(BOOL)checkUserAlreadyLogged;
-(BOOL)checkUserIfAlreadyLoggedInMobile;
-(void)deleteArrayFile;
-(void)setAlreadyLoggedIn:(BOOL)status;
@end
