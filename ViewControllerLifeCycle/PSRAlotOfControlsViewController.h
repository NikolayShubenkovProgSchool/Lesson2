//
//  ViewController.h
//  ViewControllerLifeCycle
//
//  Created by n.shubenkov on 27/08/14.
//  Copyright (c) 2014 n.shubenkov. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface PSRAlotOfControlsViewController : UIViewController

@property (weak, nonatomic) IBOutlet UIButton *addTextButton;
@property (weak, nonatomic) IBOutlet UIButton *changeImageButton;
@property (weak, nonatomic) IBOutlet UISwitch *aSwitch;
//@property (weak, nonatomic) IBOutlet UILabel *useRandomColorLabel;
@property (weak, nonatomic) IBOutlet UITextField *textView;
@property (weak, nonatomic) IBOutlet UIImageView *imageView;

- (IBAction)addTextButtonPressed:(UIButton *)sender;
- (void)changeImageButtonPresed;

@end

