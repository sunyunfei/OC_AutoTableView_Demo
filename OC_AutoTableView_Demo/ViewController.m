//
//  ViewController.m
//  OC_AutoTableView_Demo
//
//  Created by 孙云飞 on 2018/8/27.
//  Copyright © 2018年 孙云飞. All rights reserved.
//

#import "ViewController.h"
#import "TestModel.h"
#import "TestCell.h"
#import "UITableView+YFCell.h"
static NSString *tCell = @"TestCell";
@interface ViewController ()<UITableViewDataSource,UITableViewDelegate>
@property (weak, nonatomic) IBOutlet UITableView *tableView;
@property(nonatomic,strong)NSArray *datas;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    TestModel *t = [[TestModel alloc]init];
    _datas = [t obtainDatas];
    
    
    [self.tableView registerNib:[UINib nibWithNibName:tCell bundle:nil] forCellReuseIdentifier:tCell];
    _tableView.rowHeight = UITableViewAutomaticDimension;
    _tableView.estimatedRowHeight = 100;
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

    return UITableViewAutomaticDimension;
}


- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    
    
    UIStoryboard *story = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
    UIViewController *vc = [story instantiateViewControllerWithIdentifier:@"sVC"];
    [self.navigationController pushViewController:vc animated:YES];
}
@end
