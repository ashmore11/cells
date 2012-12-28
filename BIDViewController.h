//
//  BIDViewController.h
//  Cells
//
//  Created by Scott Ashmore on 12-01-15.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface BIDViewController : UIViewController <UITableViewDataSource, UITableViewDelegate>

@property (strong, nonatomic) NSArray *computers;


@end
