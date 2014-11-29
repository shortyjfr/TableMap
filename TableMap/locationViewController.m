//
//  locationViewController.m
//  TableMap
//
//  Created by Sachin Bhardwaj on 19/01/13.
//  Copyright (c) 2013 Sachin Bhardwaj. All rights reserved.
//

#import "locationViewController.h"
#import "AddressAnnotation.h"

@interface locationViewController ()

@end

@implementation locationViewController
@synthesize strpath,mapView;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    MKCoordinateRegion region;
    MKCoordinateSpan span;
    span.latitudeDelta=0.2;
    span.longitudeDelta=0.2;
    
    CLLocationCoordinate2D location = [self addressLocation];
    region.span=span;
    region.center=location;
    
    AddressAnnotation *addAnnotation = [[AddressAnnotation alloc] initWithCoordinate:location];
    
    if(addAnnotation != nil) {
        [mapView removeAnnotation:addAnnotation];
        
    }
    
    
    
    [mapView addAnnotation:addAnnotation];
    
    [mapView setRegion:region animated:TRUE];
    [mapView regionThatFits:region];
    
    NSLog(@"load");
}





-(CLLocationCoordinate2D) addressLocation
{
    // NSString *urlString = [NSString stringWithFormat:@"http://maps.google.com/maps/geo?q=%@&output=csv",
    //[addressField.text stringByAddingPercentEscapesUsingEncoding:NSUTF8StringEncoding]];
    
    // NSString *strLoction;
    // strLoction=@"New Delhi";
    
    // New
    // http://maps.googleapis.com/maps/api/geocode/output?parameters
    
    //Old
    // http://maps.google.com/maps/geo?q=%@&output=csv
    
    
    
    NSString *urlString = [NSString stringWithFormat:@"http://maps.googleapis.com/maps/api/geocode/%@&output?parameters",
                           [strpath stringByAddingPercentEscapesUsingEncoding:NSUTF8StringEncoding]];
    NSLog(@"urlString:%@",urlString);
    
    
    
    NSString *locationString = [NSString stringWithContentsOfURL:[NSURL URLWithString:urlString]encoding:NSUTF8StringEncoding error:nil];
    
    NSArray *listItems = [locationString componentsSeparatedByString:@","];
    
    
    double latitude = 0.0;
    double longitude = 0.0;
    
    if([listItems count] >= 4 && [[listItems objectAtIndex:0] isEqualToString:@"200"]) {
        latitude = [[listItems objectAtIndex:2] doubleValue];
        longitude = [[listItems objectAtIndex:3] doubleValue];
    }
    else
    {
        //Show error
        
        NSLog(@"Error");
    }
    CLLocationCoordinate2D location;
    location.latitude = latitude;
    location.longitude = longitude;
    
    
    
    
    return location;
    
    // Do any additional setup after loading the view from its nib.
}

- (MKAnnotationView *) mapView:(MKMapView *)mapView viewForAnnotation:(id <MKAnnotation>) annotation{
    MKPinAnnotationView *annView=[[MKPinAnnotationView alloc] initWithAnnotation:annotation reuseIdentifier:@"currentloc"];
    annView.pinColor = MKPinAnnotationColorGreen;
    annView.animatesDrop=TRUE;
    annView.canShowCallout = YES;
    annView.calloutOffset = CGPointMake(-5, 5);
    return annView;
}

- (void)viewDidUnload
{
    [super viewDidUnload];}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}
@end
