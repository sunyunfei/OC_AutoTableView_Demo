//
//  UITableView+YFCell.m
//  OC_AutoTableView_Demo
//
//  Created by 孙云飞 on 2018/8/27.
//  Copyright © 2018年 孙云飞. All rights reserved.
//

#import "UITableView+YFCell.h"

@implementation UITableView (YFCell)
- (CGFloat)yf_autoCellHeightIndex:(NSIndexPath *)indexPath{
    
    CGFloat cellHeight = 0;
    
    UITableViewCell *cell = [self cellForRowAtIndexPath:indexPath];
    
    return cellHeight;
}
@end
