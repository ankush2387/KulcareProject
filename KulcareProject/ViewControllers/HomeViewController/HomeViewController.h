//
//  ViewController.h
//  KulcareProject
//
//  Created by Ankush Kumar on 08/06/15.
//  Copyright (c) 2015 Ankush Kumar. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ViewUtility.h"

@interface HomeViewController : UIViewController

@property (weak, nonatomic) IBOutlet UIImageView *imgViewLogo;

- (IBAction)btnSignUpEvent:(id)sender;
- (IBAction)btnLoginEvent:(id)sender;

@property (weak, nonatomic) IBOutlet UIButton *btnSignUp;
@property (weak, nonatomic) IBOutlet UIButton *btnLogin;

@property (strong, nonatomic) UIPageViewController *pageViewController;

@end

