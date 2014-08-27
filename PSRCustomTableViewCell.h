//
//  PSRCustomTableViewCell.h
//  ViewControllerLifeCycle
//
//  Created by n.shubenkov on 27/08/14.
//  Copyright (c) 2014 n.shubenkov. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface PSRCustomTableViewCell : UITableViewCell
@property (weak, nonatomic) IBOutlet UIImageView *cellImage;
@property (weak, nonatomic) IBOutlet UILabel *firstLabel;
@property (weak, nonatomic) IBOutlet UILabel *label2;

@end
