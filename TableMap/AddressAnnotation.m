//
//  AddressAnnotation.m
//  test loaction
//
//  Created by Sachin Bhardwaj on 11/01/13.
//  Copyright (c) 2013 Sachin Bhardwaj. All rights reserved.
//

#import "AddressAnnotation.h"

@implementation AddressAnnotation
@synthesize coordinate;

- (NSString *)subtitle{
    return @"Here is I am";
}

- (NSString *)title{
    return @"Hey!!";
}

-(id)initWithCoordinate:(CLLocationCoordinate2D) c{
    coordinate=c;
    NSLog(@"%f,%f",c.latitude,c.longitude);
    return self;
}
@end

