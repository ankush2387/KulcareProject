//
//  PageContentViewController.m
//  PageViewDemo
//
//  Created by Simon on 24/11/13.
//  Copyright (c) 2013 Appcoda. All rights reserved.
//

#import "WalkThroughViewController.h"

@interface WalkThroughViewController ()

@property (strong, nonatomic) NSArray *arrBGImages;
@property (strong, nonatomic) NSArray *arrLogoImages;
@property (strong, nonatomic) NSArray *arrTitles;
@property (strong, nonatomic) NSArray *arrMsgs;

@end

@implementation WalkThroughViewController

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
    self.arrBGImages = @[@"walkThrough_1", @"walkThrough_2", @"walkThrough_3"];
    self.arrLogoImages = @[@"doc_icon", @"medicine_icon", @"stethoscope_icon"];
    self.arrTitles = @[@"Find Doctors with Ease", @"Organize Your Records",@"Build your practice"];
    self.arrMsgs =   @[@"Quickly find and book top-rated doctors and dentist within minutes", @"Keep everything from prescriptions and lab results to past diagnoses organised and accessible", @"Be found by new patients,\n streamline appointment schedules, and increase your availability"];
  
    self.imgViewBG.image = [UIImage imageNamed:self.imageFile];
    self.imgViewLogo.image = [UIImage imageNamed:self.logoImageFile];
    
    [self.imgViewBG setImage:[UIImage imageNamed:self.arrBGImages[self.pageIndex]]];
    [self.imgViewLogo setImage:[UIImage imageNamed:self.arrLogoImages[self.pageIndex]]];
    if (self.pageIndex == 0) {
        [self.imgViewLogo setFrame:CGRectMake(129, 188, 61, 48)];   
    }
    else if (self.pageIndex == 1)
    {
        [self.imgViewLogo setFrame:CGRectMake(129, 188, 48, 48)];
    }
    else{
        [self.imgViewLogo setFrame:CGRectMake(129, 188, 48, 57)];
    }
    [self.lblTitle setText:self.arrTitles[self.pageIndex]];
    [self.lblMsg setText:self.arrMsgs[self.pageIndex]];
    [self setUI];
}
-(void)setUI
{
    self.lblTitle.numberOfLines = 0;
    self.lblMsg.numberOfLines = 0;
    self.lblTitle.font = [UIFont fontWithName:@"ProximaNovaA-Bold" size:18];
    self.lblMsg.font    = [UIFont fontWithName:@"ProximaNova-Regular" size:14];
}
- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
