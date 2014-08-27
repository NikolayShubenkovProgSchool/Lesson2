//
//  ViewController.h
//  ViewControllerLifeCycle
//
//  Created by n.shubenkov on 27/08/14.
//  Copyright (c) 2014 n.shubenkov. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface PSRAlotOfControlsViewController : UIViewController <UITextFieldDelegate>

@property (weak, nonatomic) IBOutlet UIButton *addTextButton;
@property (weak, nonatomic) IBOutlet UIButton *changeImageButton;
@property (weak, nonatomic) IBOutlet UISwitch *aSwitch;
//@property (weak, nonatomic) IBOutlet UILabel *useRandomColorLabel;
@property (weak, nonatomic) IBOutlet UITextField *textView;
@property (weak, nonatomic) IBOutlet UIImageView *imageView;
- (IBAction)changeImageButtonPressedDown:(id)sender;
- (IBAction)addTextButtonPressed:(UIButton *)sender;
- (void)changeImageButtonPresed;
- (IBAction)changeImageButtonTouchUp:(UIButton *)sender;
@property (weak, nonatomic) IBOutlet UITextView *editedTextView;

@end

