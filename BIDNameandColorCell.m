//
//  BIDNameandColorCell.m
//  Cells
//
//  Created by Scott Ashmore on 12-01-15.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "BIDNameandColorCell.h"

@implementation BIDNameandColorCell

@synthesize name; 
@synthesize color;
@synthesize nameLabel;
@synthesize colorLabel;

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        // Initialization code
    }
    return self;
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

    //defining my own setters so whenever new values are passed for the name or color properties we can update the labels we created earlier.
- (void)setName:(NSString *)n {
    if (![n isEqualToString:name]) {
        name = [n copy];
        nameLabel.text = name; }
}
- (void)setColor:(NSString *)c {
    if (![c isEqualToString:color]) {
        color = [c copy];
        colorLabel.text = color; 
    }
}

@end
