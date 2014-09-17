//
//  MovieCell.h
//  Rotten Tomatoes
//
//  Created by Bal Kumar on 9/15/14.
//  Copyright (c) 2014 Y.CORP.YAHOO.COM\bal. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MovieCell : UITableViewCell
@property (weak, nonatomic) IBOutlet UILabel *titleLabel;
@property (weak, nonatomic) IBOutlet UIImageView *posterView;
@property (weak, nonatomic) IBOutlet UILabel *synopsisLabel;

@end
