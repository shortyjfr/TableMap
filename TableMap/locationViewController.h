//
//  locationViewController.h
//  TableMap
//
//  Created by Sachin Bhardwaj on 19/01/13.
//  Copyright (c) 2013 Sachin Bhardwaj. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MapKit/Mapkit.h>

@interface locationViewController : UIViewController <MKMapViewDelegate>
{
    
    IBOutlet MKMapView *mapView;
    NSString *strpath;
    
    
    
}

@property (nonatomic,strong)IBOutlet MKMapView *mapView;

@property (nonatomic,strong)  NSString *strpath;


-(CLLocationCoordinate2D) addressLocation;

@end
