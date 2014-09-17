//
//  MovieDetailsViewController.m
//  Rotten Tomatoes
//
//  Created by Bal Kumar on 9/15/14.
//  Copyright (c) 2014 Y.CORP.YAHOO.COM\bal. All rights reserved.
//

#import "MovieDetailsViewController.h"

@interface MovieDetailsViewController ()
@property (weak, nonatomic) IBOutlet UIImageView *MovieDetailsImageView;
@property (weak, nonatomic) IBOutlet UIImageView *MovieDtlsUIImageView;

@end

@implementation MovieDetailsViewController

- (instancetype)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
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
    // Do any additional setup after loading the view from its nib.
  
    UIScrollView *scrollView;
    UIImageView *imageView;
    NSDictionary *viewsDictionary;
    UILabel   *synLabel;
    UIView    * uiView;
    
    // Create the scroll view and the image view.
    scrollView  = [[UIScrollView alloc] init];
    imageView = [[UIImageView alloc] init];
    synLabel = [[UILabel alloc] init];
    uiView   = [[UIView alloc] init];
    
    
    // Add an image to the image view.
    NSString *posterUrl = self.movieURL;
    //NSLog(@"movieURL= %@",posterUrl);
    NSString *synFromFirstVC = self.syn;
    //NSLog(@"synFromFirstVC= %@",synFromFirstVC);
    
    synLabel.text=synFromFirstVC;
    
    
    
    UILabel *pointsCheckInLbl = [[UILabel alloc] initWithFrame:CGRectMake(0.0, 165.0, 320.0, 500.0)];
    pointsCheckInLbl.font = [UIFont boldSystemFontOfSize:14.0];
    pointsCheckInLbl.textAlignment = UITextAlignmentCenter;
    pointsCheckInLbl.textColor = [UIColor whiteColor];
    pointsCheckInLbl.backgroundColor = [UIColor clearColor];
    pointsCheckInLbl.numberOfLines = 0;
//    [pointsCheckInLbl sizeToFit];
    pointsCheckInLbl.text = synFromFirstVC;//synLabel;//@"Points Earned For Check-In";
    [ uiView  addSubview: pointsCheckInLbl];
    
    
    NSString *ImageURL =  [ posterUrl stringByReplacingOccurrencesOfString:@"tmb" withString:@"org"];
    NSData *imageData = [NSData dataWithContentsOfURL:[NSURL URLWithString:ImageURL]];
    imageView.image = [UIImage imageWithData:imageData];

    //self.MovieDetailsImageView = imageView;
    
    
    self.MovieDtlsUIImageView.image  = [UIImage  imageWithData:[NSData  dataWithContentsOfURL:[NSURL  URLWithString:ImageURL]]];
    self.MovieDtlsUIImageView.contentMode  = UIViewContentModeScaleAspectFit;
   
    // Add the scroll view to our view.
     [self.view addSubview:scrollView];
    // Add the image view to the scroll view.
    [scrollView addSubview: uiView];  //     [scrollView addSubview:pointsCheckInLbl];
    
    // Set the translatesAutoresizingMaskIntoConstraints to NO so that the views autoresizing mask is not translated into auto layout constraints.
     scrollView.translatesAutoresizingMaskIntoConstraints  = NO;
  ///  synLabel.translatesAutoresizingMaskIntoConstraints = NO;
    
    // Set the constraints for the scroll view and the image view.
     viewsDictionary = NSDictionaryOfVariableBindings(scrollView);//, imageView);
     [self.view addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"H:|[scrollView]|" options:0 metrics: 0 views:viewsDictionary]];
     [self.view addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"V:|[scrollView]|" options:0 metrics: 0 views:viewsDictionary]];
    //[scrollView addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"H:|[synLabel]|" options:0 metrics: 0 views:viewsDictionary]];
    //[scrollView addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"V:|[synLabel]|" options:0 metrics: 0 views:viewsDictionary]];
 
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
