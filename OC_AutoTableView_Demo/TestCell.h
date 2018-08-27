//
//  TestCell.h
//  OC_AutoTableView_Demo
//
//  Created by 孙云飞 on 2018/8/27.
//  Copyright © 2018年 孙云飞. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "TestModel.h"
@interface TestCell : UITableViewCell
@property (weak, nonatomic) IBOutlet UILabel *titleLabel;
@property (weak, nonatomic) IBOutlet UIImageView *icon;
@property (weak, nonatomic) IBOutlet UILabel *contentlabel;
@property(nonatomic,strong)TestModel *model;
@end
