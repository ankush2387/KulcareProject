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

@property (weak, nonatomic) IBOutlet UIImageView *LogoImgview;

- (IBAction)SignupBtn:(id)sender;
- (IBAction)LoginBtn:(id)sender;

@property (weak, nonatomic) IBOutlet UIButton *SignupBtnProp;
@property (weak, nonatomic) IBOutlet UIButton *LoginBtnProp;

@property (strong, nonatomic) UIPageViewController *pageViewController;

@end

