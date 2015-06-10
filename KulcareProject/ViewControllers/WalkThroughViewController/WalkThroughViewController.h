//
//  PageContentViewController.h
//  PageViewDemo
//
//  Created by Simon on 24/11/13.
//  Copyright (c) 2013 Appcoda. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface WalkThroughViewController : UIViewController

@property (weak, nonatomic) IBOutlet UIImageView *imgViewBG;
@property (weak, nonatomic) IBOutlet UIImageView *imgViewLogo;
@property (weak, nonatomic) IBOutlet UILabel *lblTitle;
@property (weak, nonatomic) IBOutlet UILabel *lblMsg;

@property NSUInteger pageIndex;

@property NSString *titleText;
@property NSString *imageFile;
@property NSString *logoImageFile;
@property NSString *label1Text;
@property NSString *label2Text;

@end
