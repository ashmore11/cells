//
//  BIDNameandColorCell.h
//  Cells
//
//  Created by Scott Ashmore on 12-01-15.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface BIDNameandColorCell : UITableViewCell

@property (copy, nonatomic) NSString *name; 
@property (copy, nonatomic) NSString *color;

@property (strong, nonatomic) IBOutlet UILabel *nameLabel;
@property (strong, nonatomic) IBOutlet UILabel *colorLabel;


@end
