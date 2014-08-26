//
//  ViewController.m
//  ViewControllerLifeCycle
//
//  Created by n.shubenkov on 27/08/14.
//  Copyright (c) 2014 n.shubenkov. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

#pragma mark - ViewController LifeCycle -

- (instancetype)initWithCoder:(NSCoder *)aDecoder
{
    self = [super initWithCoder:aDecoder];
    //load from storybord
    NSLog(@"load from storyboard started");
    NSLog(@"no outlets are available. For Example: %@",self.image);
    return self;
}

- (instancetype)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    //load from xib
    NSLog(@"load from nib file finished. outlets are not presented currently");
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
    //The most computation intensitive tasks are performed here
    
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    NSLog(@"oh. View will be presented after just a moment");
    
}

- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
    NSLog(@"I am on screen now. Time to start some nice animations or something which requeres user attention");
    
}

- (void)viewWillDisappear:(BOOL)animated
{
    [super viewWillDisappear:animated];
    NSLog(@"After just a moment view will be popped of the view hierarchy stack or maybe overseen by other view on it");
}

- (void)viewDidDisappear:(BOOL)animated
{
    [super viewDidDisappear:animated];
    NSLog(@"now view is not on screen. Stop any animations or operations like this");
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    NSLog(@"Free as much unnecessarry resourses as possible or your app will be closed by system");
    // Dispose of any resources that can be recreated.
}

#pragma mark - actions -

- (IBAction)buttonPressed:(UIButton *)sender
{
    
}
@end
