//
//  BIDViewController.m
//  Cells
//
//  Created by Scott Ashmore on 12-01-15.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "BIDViewController.h"
#import "BIDNameAndColorCell.h"

@implementation BIDViewController

@synthesize computers;

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
        //This creates a series of dictionaries. Each dictionary contains the name and color information for one row in the table. The name for that row is held in the dictionary under the key Name, and the color is held under the key Color. I stick all the dictionaries into a single array, which is my data for this table.
    NSDictionary *row1 = [[NSDictionary alloc] initWithObjectsAndKeys: 
                          @"MacBook", @"Name", @"White", @"Color", nil];
    NSDictionary *row2 = [[NSDictionary alloc] initWithObjectsAndKeys: 
                          @"MacBook Pro", @"Name", @"Silver", @"Color", nil];
    NSDictionary *row3 = [[NSDictionary alloc] initWithObjectsAndKeys: 
                          @"iMac", @"Name", @"Silver", @"Color", nil];
    NSDictionary *row4 = [[NSDictionary alloc] initWithObjectsAndKeys: 
                          @"Mac Mini", @"Name", @"Silver", @"Color", nil]; 
    NSDictionary *row5 = [[NSDictionary alloc] initWithObjectsAndKeys: 
                          @"Mac Pro", @"Name", @"Silver", @"Color", nil];
    
    self.computers = [[NSArray alloc] initWithObjects:row1, row2, row3, row4, row5, nil];
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
    self.computers = nil;
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
}

- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
}

- (void)viewWillDisappear:(BOOL)animated
{
	[super viewWillDisappear:animated];
}

- (void)viewDidDisappear:(BOOL)animated
{
	[super viewDidDisappear:animated];
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}

#pragma mark -
#pragma mark Table Data Source Methods
- (NSInteger)tableView:(UITableView *)tableView
 numberOfRowsInSection:(NSInteger)section 
{
    return [self.computers count]; 
}   
    //This code implements the cell I designed (BIDNameandColorCell.xib).
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath 
{
    static NSString *CellTableIdentifier = @"CellTableIdentifier";
    static BOOL nibsRegistered = NO;
    if (!nibsRegistered) {
        UINib *nib = [UINib nibWithNibName:@"BIDNameandColorCell" bundle:nil];
        [tableView registerNib:nib forCellReuseIdentifier:CellTableIdentifier];
        nibsRegistered = YES;
}
    
    
    BIDNameandColorCell *cell = [tableView dequeueReusableCellWithIdentifier:
                            CellTableIdentifier];

    NSUInteger row = [indexPath row];
    NSDictionary *rowData = [self.computers objectAtIndex:row];
    cell.name = [rowData objectForKey:@"Name"]; cell.color = [rowData objectForKey:@"Color"];
    return cell;
}

    //Changing the height of our new table view cell.
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath 
{
    return 65.0; // Same number we used in Interface Builder 
}

//- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
//    NSUInteger row = [indexPath row];
//    NSString *rowValue = [computers objectAtIndex:row];
//    NSString *message = [[NSString alloc] initWithFormat: @"You selected %@", rowValue];
//    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Row Selected!"
//                                                    message:message
//                                                   delegate:nil cancelButtonTitle:@"Yes I Did"
//                                          otherButtonTitles:nil]; [alert show];
//    [tableView deselectRowAtIndexPath:indexPath animated:YES]; }

@end
