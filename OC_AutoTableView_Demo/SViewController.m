//
//  SViewController.m
//  OC_AutoTableView_Demo
//
//  Created by 孙云飞 on 2018/8/27.
//  Copyright © 2018年 孙云飞. All rights reserved.
//

#import "SViewController.h"
#import "TestModel.h"
#import "TestCell.h"
#import "UITableView+YFCell.h"
static NSString *tCell = @"TestCell";
@interface SViewController ()

@property (weak, nonatomic) IBOutlet UITableView *tableView;
@property(nonatomic,strong)NSArray *datas;

@property(nonatomic,strong)TestCell *dCell;//默认的cell
@end

@implementation SViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    TestModel *t = [[TestModel alloc]init];
    _datas = [t obtainDatas];
    
    
    [self.tableView registerNib:[UINib nibWithNibName:tCell bundle:nil] forCellReuseIdentifier:tCell];

    
    _dCell = [self.tableView dequeueReusableCellWithIdentifier:tCell];
}


- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    
    return _datas.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    TestCell *cell = [tableView dequeueReusableCellWithIdentifier:tCell forIndexPath:indexPath];
    cell.model = _datas[indexPath.row];
    return cell;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    //判断是否已经缓存高度
    TestModel *model = _datas[indexPath.row];
    if (model.height > 0) {
        
        NSLog(@"已经缓存了高度");
        return model.height;
    }
    
    TestCell *cell = _dCell;
    cell.contentView.translatesAutoresizingMaskIntoConstraints = NO;
    cell.model = _datas[indexPath.row];
    
    CGFloat w = CGRectGetWidth(self.tableView.bounds);
    
    NSLayoutConstraint *leftConstraint = [NSLayoutConstraint constraintWithItem:cell.contentView attribute:NSLayoutAttributeLeft relatedBy:NSLayoutRelationEqual toItem:cell attribute:NSLayoutAttributeLeft multiplier:1.0 constant:0];
    
    NSLayoutConstraint *rightConstraint = [NSLayoutConstraint constraintWithItem:cell.contentView attribute:NSLayoutAttributeRight relatedBy:NSLayoutRelationEqual toItem:cell attribute:NSLayoutAttributeRight multiplier:1.0 constant:0];
    
    NSLayoutConstraint *topConstraint = [NSLayoutConstraint constraintWithItem:cell.contentView attribute:NSLayoutAttributeTop relatedBy:NSLayoutRelationEqual toItem:cell attribute:NSLayoutAttributeTop multiplier:1.0 constant:0];
    
    NSLayoutConstraint *bottomConstraint = [NSLayoutConstraint constraintWithItem:cell.contentView attribute:NSLayoutAttributeBottom relatedBy:NSLayoutRelationEqual toItem:cell attribute:NSLayoutAttributeBottom multiplier:1.0 constant:0];
    
    NSArray<NSLayoutConstraint *> *edgeConstraints = @[leftConstraint, rightConstraint, topConstraint, bottomConstraint];
    [cell addConstraints:edgeConstraints];
    
    NSLayoutConstraint *widthFenceConstraint = [NSLayoutConstraint constraintWithItem:cell.contentView attribute:NSLayoutAttributeWidth relatedBy:NSLayoutRelationEqual toItem:nil attribute:NSLayoutAttributeNotAnAttribute multiplier:1.0 constant:w];
    [cell.contentView addConstraint:widthFenceConstraint];
    
    CGFloat fit = [cell.contentView systemLayoutSizeFittingSize:UILayoutFittingCompressedSize].height;
    
    model.height = fit + 2 * 1 / [UIScreen mainScreen].scale + 8 + 8;
    
    return model.height;
    
}

@end
