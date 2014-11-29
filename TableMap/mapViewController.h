//
//  mapViewController.h
//  TableMap
//
//  Created by Sachin Bhardwaj on 19/01/13.
//  Copyright (c) 2013 Sachin Bhardwaj. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "locationViewController.h"

@interface mapViewController : UIViewController
{
    
    IBOutlet UITableView *table;
    
    NSMutableArray *loaction;
    NSMutableArray *name;
    
    NSArray *imgplace;
}

@property (nonatomic,strong) UITableView *table;


@property (nonatomic,strong) NSMutableArray *loaction;

@property (nonatomic,strong) NSArray *imgplace;
@property (nonatomic,strong) NSMutableArray *name;




@end
