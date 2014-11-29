//
//  AddressAnnotation.h
//  test loaction
//
//  Created by Sachin Bhardwaj on 11/01/13.
//  Copyright (c) 2013 Sachin Bhardwaj. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <MapKit/MapKit.h>

@interface AddressAnnotation : NSObject <MKAnnotation> {
    
    CLLocationCoordinate2D coordinate;
    
    NSString *mTitle;
    NSString *mSubTitle;
}
-(id)initWithCoordinate:(CLLocationCoordinate2D) c;
@end