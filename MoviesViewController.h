//
//  MoviesViewController.h
//  Rotten Tomatoes
//
//  Created by Bal Kumar on 9/14/14.
//  Copyright (c) 2014 Y.CORP.YAHOO.COM\bal. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MoviesViewController : UIViewController<UITableViewDataSource, UITableViewDelegate>
@property (nonatomic, retain) UIActivityIndicatorView *m_activity;
@end
