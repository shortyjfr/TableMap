//
//  mapAppDelegate.h
//  TableMap
//
//  Created by Sachin Bhardwaj on 19/01/13.
//  Copyright (c) 2013 Sachin Bhardwaj. All rights reserved.
//

#import <UIKit/UIKit.h>

@class mapViewController;

@interface mapAppDelegate : UIResponder <UIApplicationDelegate>
{
    UINavigationController *nav;
 }

@property (strong, nonatomic) UINavigationController *nav;
@property (strong, nonatomic) UIWindow *window;
@property (strong, nonatomic) mapViewController *viewController;

@end
