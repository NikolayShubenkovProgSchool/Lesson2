//
//  ViewController.h
//  ViewControllerLifeCycle
//
//  Created by n.shubenkov on 27/08/14.
//  Copyright (c) 2014 n.shubenkov. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
@property (weak, nonatomic) IBOutlet UIButton *button;
@property (weak, nonatomic) IBOutlet UILabel *labelNearButton;
@property (weak, nonatomic) IBOutlet UISwitch *aSwitch;
@property (weak, nonatomic) IBOutlet UILabel *labelNearSwitch;
@property (weak, nonatomic) IBOutlet UIButton *buttonPressed;
@property (weak, nonatomic) IBOutlet UITextField *textInput;
@property (weak, nonatomic) IBOutlet UIImageView *image;

- (IBAction)buttonPressed:(UIButton *)sender;

@end

