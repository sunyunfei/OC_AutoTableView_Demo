//
//  TestCell.m
//  OC_AutoTableView_Demo
//
//  Created by 孙云飞 on 2018/8/27.
//  Copyright © 2018年 孙云飞. All rights reserved.
//

#import "TestCell.h"

@implementation TestCell

- (void)setModel:(TestModel *)model{
    
    _model = model;
    
    self.titleLabel.text = model.title;
    self.contentlabel.text = model.content;
    
    __block typeof(self)weakSelf = self;
    dispatch_async(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0), ^{
       
        NSData *data = [[NSData alloc]initWithContentsOfURL:[NSURL URLWithString:model.icon]];
        dispatch_async(dispatch_get_main_queue(), ^{
           
            weakSelf.icon.image = [UIImage imageWithData:data];
        });
    });
}

@end
