//
//  NamesViewController.m
//  ViewControllerLifeCycle
//
//  Created by n.shubenkov on 27/08/14.
//  Copyright (c) 2014 n.shubenkov. All rights reserved.
//

#import "PSRNamesViewController.h"

#import "PSRCustomTableViewCell.h"

#import "UIColor+PSRRandomColors.h"

@interface PSRNamesViewController ()

@end

@implementation PSRNamesViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.tableView.delegate   = self;
    self.tableView.dataSource = self;
    // Do any additional setup after loading the view.
}

#pragma mark - tableView dataSourse

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return self.strings.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    BOOL oddIndex = indexPath.row % 2 == 0;
    
    if (oddIndex){
        PSRCustomTableViewCell *aCell = [self.tableView dequeueReusableCellWithIdentifier:@"PSRCustomCellIdentifier"];
        aCell.firstLabel.text = self.strings[indexPath.row];
        aCell.label2.text = [NSString stringWithFormat:@"section %d row %d", indexPath.section, indexPath.row];
        
        aCell.cellImage.backgroundColor = [UIColor psr_randomColor];
        
        return aCell;
    }
    else {
        UITableViewCell *aCell = [self.tableView dequeueReusableCellWithIdentifier:@"PSRCustomCellIdentifier2"];
        aCell.textLabel.text = [NSString stringWithFormat: @"%@",indexPath];
        return aCell;
    }
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
