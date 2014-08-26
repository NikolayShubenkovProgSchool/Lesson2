//
//  ViewController.m
//  ViewControllerLifeCycle
//
//  Created by n.shubenkov on 27/08/14.
//  Copyright (c) 2014 n.shubenkov. All rights reserved.
//

#import "PSRAlotOfControlsViewController.h"

@interface PSRAlotOfControlsViewController ()
@property (nonatomic, strong) NSArray *images;
@property (nonatomic, strong) UIColor *labelNearButtonColor;
@end

@implementation PSRAlotOfControlsViewController

#pragma mark - properties overload -

- (NSArray *)imageNames
{
    if (_images){
        int imagesCount = 5;
        
        NSMutableArray *addedImages = [NSMutableArray arrayWithCapacity:imagesCount];
        
        for (int i = 1; i <= imagesCount; i++) {
            NSString *imageName = [NSString stringWithFormat:@"pic%d.jpeg",i];
            NSLog(@"will add image named: %@",imageName);
            [addedImages addObject:[UIImage imageNamed:imageName]];
        }
        _images = [addedImages copy];
    }
    return _images;
}

- (UIColor *)labelNearButtonColor
{
    if (!_labelNearButtonColor){
        _labelNearButtonColor = [UIColor redColor];
    }
    return _labelNearButtonColor;
}

#pragma mark - ViewController LifeCycle -

- (instancetype)initWithCoder:(NSCoder *)aDecoder
{
    self = [super initWithCoder:aDecoder];
    //load from storybord
    NSLog(@"%s\nload from storyboard started",__PRETTY_FUNCTION__);
    NSLog(@"no outlets are available. For Example image Outlet is currently: %@",self.image);
    NSLog(@"do not call self.view from here as it will forse viewController to load view in memory");
    NSLog(@"To check if view is loaded, call: self.isViewLoaded");
    return self;
}

- (instancetype)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    //load from xib
    NSLog(@"%s\nload from nib file finished. outlets are not presented currently",__PRETTY_FUNCTION__);
    return self;
}

//You can override this method to add some views programmatically
//when not using Storyboards or Nibs
//- (void)loadView
//{
//    
//}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    NSLog(@"%s\nnow outlets are accessable. Get image description: %@",__PRETTY_FUNCTION__, self.image);
    NSLog(@"This is a start point to make some tasks wich requers a lot of computation. Do not calculate layout here. Views could be configured in other frames on next lifecycle stage");
    [self setup];
    //The most computation intensitive tasks are performed here
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    NSLog(@"%s\noh. View will be presented after just a moment",__PRETTY_FUNCTION__);
}

- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
    NSLog(@"%s\nI am on screen now. Time to start some nice animations or something which requeres user attention",__PRETTY_FUNCTION__);
    
    [self animateSomething];
    
    NSLog(@"self image: %@",self.image);
}

- (void)viewWillDisappear:(BOOL)animated
{
    [super viewWillDisappear:animated];
    NSLog(@"%s\nAfter just a moment view will be popped of the view hierarchy stack or maybe overseen by other view on it",__PRETTY_FUNCTION__);
}

- (void)viewDidDisappear:(BOOL)animated
{
    [super viewDidDisappear:animated];
    NSLog(@"%s\nnow view is not on screen. Stop any animations or operations like this",__PRETTY_FUNCTION__);
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    NSLog(@"%s\nFree as much unnecessarry resourses as possible or your app will be closed by system",__PRETTY_FUNCTION__);
    self.images = nil;
    // Dispose of any resources that can be recreated.
}

- (void)dealloc
{
    NSLog(@"%s\nGood bye everybody. We had a lot of nice time",__PRETTY_FUNCTION__);
}

#pragma mark - setup -

- (void)setup
{
    [self createeViewPragrammatically];
}

- (void)createeViewPragrammatically
{
    CGRect viewFrame = self.changeImageButton.frame;
    UIView *aView = [[UIView alloc] initWithFrame: viewFrame];
    aView.backgroundColor = [UIColor yellowColor];
    [self.view addSubview:aView];}

#pragma mark - actions -

- (IBAction)addTextButtonPressed:(UIButton *)sender
{
    
}

#pragma mark - private -

- (void)animateSomething
{
#warning implement this
}

@end
