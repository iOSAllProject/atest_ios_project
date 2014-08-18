//
//  BrowseDetailViewController.h
//  Candy Cart
//
//  Created by Mr Kruk (kruk8989@gmail.com)  http://codecanyon.net/user/kruk8989 on 7/11/13.
//  Copyright (c) 2013 kruk. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "MGScrollView.h"
#import "MGTableBoxStyled.h"
#import "MGLineStyled.h"
#import "PhotoBox.h"
#import "ChooseSubCategoryController.h"
#import "DetailViewController.h"
@interface BrowseDetailViewController : UIViewController<UIScrollViewDelegate,FPPopoverControllerDelegate>
{
    MGScrollView *scroller;
     CGPoint initialContentOffset;
    FPPopoverController *popover;
    NSArray *categoriesArray;
    NSArray *productByCategoriesData;
    
    NSString *globalCategoryID;
    UIActivityIndicatorView *spinner;
    float fixedHeight;
    int currentPage;
    int totalPage;
    BOOL processing;
    BOOL isSearch;
}
-(void)initPopOverCategoriesControllerArray:(NSArray*)ary;
-(void)initCategoryID:(NSString*)ID;
-(void)subCategoryExe:(NSString*)categoryID;
-(void)initKeyword:(NSString*)keyword;
@end
