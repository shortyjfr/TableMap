//
//  mapViewController.m
//  TableMap
//
//  Created by Sachin Bhardwaj on 19/01/13.
//  Copyright (c) 2013 Sachin Bhardwaj. All rights reserved.
//

#import "mapViewController.h"

@interface mapViewController ()

@end

@implementation mapViewController
@synthesize table,loaction,imgplace,name;

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    //array=[[NSArray alloc]init];
    self.loaction = [NSMutableArray arrayWithObjects:@"New Delhi", @"Jaipur", @"Bangalore", @"Mumbai", nil];
    
//    imgplace=[[NSArray alloc]init];
    imgplace = [NSArray arrayWithObjects:@"New Delhi.jpg", @"Jaipur.jpeg", @"Bangalore.jpeg", @"Mumbai.jpeg", nil];
    self.name = [NSMutableArray arrayWithObjects:@"Nikhil",@"Sachin",@"Sajid",@"Rahul",nil];
    self.title=@"City Name's";
    
	// Do any additional setup after loading the view, typically from a nib.
}


- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    //#warning Potentially incomplete method implementation.
    // Return the number of sections.
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    //#warning Incomplete method implementation.
    // Return the number of rows in the section.
    return [self.loaction count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"Cell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    if (cell==nil)
    {
        cell=[[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier];
        
    }
    //   cell.textLabel.text=[self.array objectAtIndex:[indexPath row]];
    
    // UIImage *cellImage = [UIImage imageNamed:@"Audi.jpg"];
    // cell.imageView.image = cellImage;
    cell.textLabel.text = [NSString stringWithFormat:@"%@,%@",[self.name objectAtIndex:indexPath.row],[self.loaction objectAtIndex:indexPath.row]];
    cell.imageView.image = [UIImage imageNamed:[imgplace objectAtIndex: indexPath.row]];
    //    cell.textLabel.text = [self.array objectAtIndex: [indexPath row]];
    //    switch (indexPath.row) {
    //        case 0:
    //            cell.imageView.image = [UIImage imageNamed:@"New Delhi.jpg"];
    //            break;
    //        case 1:
    //            cell.imageView.image = [UIImage imageNamed:@"Jaipur.jpeg"];
    //            break;
    //        case 2:
    //            cell.imageView.image = [UIImage imageNamed:@"Bangalore.jpeg"];
    //            break;
    //        case 3:
    //            cell.imageView.image = [UIImage imageNamed:@"alwar.jpeg"];
    //            break;
    //        default:
    //            break;
    //    }
    //
    
    
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    NSLog(@"working");
    
    locationViewController *my = [[locationViewController alloc] init];
    
    
      my.strpath =[loaction objectAtIndex:indexPath.row];
    
    
    [self.navigationController pushViewController:my animated:YES];
    
}

- (void)viewDidUnload
{
    [super viewDidUnload];
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}

@end
