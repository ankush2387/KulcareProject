//
//  ViewController.m
//  KulcareProject
//
//  Created by Ankush Kumar on 08/06/15.
//  Copyright (c) 2015 Ankush Kumar. All rights reserved.
//

#import "HomeViewController.h"
#import "WalkThroughViewController.h"
#import "SignUpViewController.h"
#import "LogInViewController.h"


@interface HomeViewController ()<UIPageViewControllerDataSource>
{
    ViewUtility *viewinstance;
}

@end

@implementation HomeViewController
{
    CGFloat width;
    CGFloat height;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.

    NSLog(@"width is %f",  self.view.bounds.size.width);
    NSLog(@"height is %f",  self.view.bounds.size.height);
    viewinstance = [[ViewUtility alloc] init];
    [self.SignupBtnProp setBackgroundColor:[viewinstance colorWithHexString:@"C4C7CD"]];
    [self.LoginBtnProp setBackgroundColor:[viewinstance colorWithHexString:@"3D83D0"]];
    [self.SignupBtnProp.layer setBorderColor:[[UIColor whiteColor] CGColor]];
    self.SignupBtnProp.layer.cornerRadius = 2;
    [self.LoginBtnProp.layer setBorderColor:[[UIColor whiteColor] CGColor]];
    self.LoginBtnProp.layer.cornerRadius = 2;
    
    [self setupUI];
    [self setFrame];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)viewDidAppear:(BOOL)animated
{
    [self.navigationController setNavigationBarHidden:YES];
}

-(void)setFrame
{
    /*[self.LogoImgview setFrame:CGRectMake(50, 50, 220, 40)];
    [self.SignupBtnProp setFrame:CGRectMake(30, 490, 120, 30)];
    [self.LoginBtnProp setFrame:CGRectMake(170, 490, 120, 30)];*/
    UIImage *signupBtn = [UIImage imageNamed:@"signup_bttn.png"];
    [_SignupBtnProp setBackgroundImage:signupBtn forState:UIControlStateNormal];
    [self.view addSubview:_SignupBtnProp];
    UIImage *loginBtn = [UIImage imageNamed:@"login_bttn.png"];
    [_LoginBtnProp setBackgroundImage:loginBtn forState:UIControlStateNormal];
    [self.view addSubview:_SignupBtnProp];
}
- (void)setupUI {
    // Create page view controller
    self.pageViewController = [[UIPageViewController alloc] initWithTransitionStyle:UIPageViewControllerTransitionStylePageCurl navigationOrientation:UIPageViewControllerNavigationOrientationHorizontal options:nil];
    self.pageViewController.dataSource = self;
    [[self.pageViewController view] setFrame:[[self view] bounds]];
    
    WalkThroughViewController *startingViewController = [self viewControllerAtIndex:0];
    NSArray *viewControllers = @[startingViewController];
    
    [self.pageViewController setViewControllers:viewControllers direction:UIPageViewControllerNavigationDirectionForward animated:NO completion:nil];
    
    [self addChildViewController:self.pageViewController];
    [self.view addSubview:self.pageViewController.view];
    [self.view sendSubviewToBack:self.pageViewController.view];
    [self.pageViewController didMoveToParentViewController:self];
}

- (IBAction)startBtn:(id)sender {
    
    WalkThroughViewController *startingViewController = [self viewControllerAtIndex:0];
    NSArray *viewControllers = @[startingViewController];
    [self.pageViewController setViewControllers:viewControllers direction:UIPageViewControllerNavigationDirectionReverse animated:NO completion:nil];
}

- (WalkThroughViewController *)viewControllerAtIndex:(NSUInteger)index
{
    // Create a new view controller and pass suitable data.
    WalkThroughViewController *pageContentViewController =
    [[WalkThroughViewController alloc] init];
    pageContentViewController.pageIndex = index;
 
    return pageContentViewController;
}

#pragma mark - Page View Controller Data Source

- (UIViewController *)pageViewController:(UIPageViewController *)pageViewController viewControllerBeforeViewController:(UIViewController *)viewController
{
    NSUInteger index = ((WalkThroughViewController*) viewController).pageIndex;
    
    if ((index == 0) || (index == NSNotFound)) {
        return nil;
    }
    
    index--;
    return [self viewControllerAtIndex:index];
}

- (UIViewController *)pageViewController:(UIPageViewController *)pageViewController viewControllerAfterViewController:(UIViewController *)viewController
{
    NSUInteger index = ((WalkThroughViewController*) viewController).pageIndex;
    
    if (index == 2 || index == NSNotFound) {
        return nil;
    }
    
    return [self viewControllerAtIndex:index+1];
}


- (NSInteger)presentationCountForPageViewController:(UIPageViewController *)pageViewController {
    return 3;
}

- (NSInteger)presentationIndexForPageViewController:(UIPageViewController *)pageViewController {
    return 0;
}

- (IBAction)SignupBtn:(id)sender {
    
    SignUpViewController * sign = [[SignUpViewController alloc] initWithNibName:@"SignUpViewController" bundle:nil];
    //[self presentViewController:sign animated:YES completion:nil];
    [self.navigationController pushViewController:sign animated:YES];
    
}

- (IBAction)LoginBtn:(id)sender {
    LogInViewController * login = [[LogInViewController alloc] initWithNibName:@"LogInViewController" bundle:nil];
    [self.navigationController pushViewController:login animated:YES];
}
@end
