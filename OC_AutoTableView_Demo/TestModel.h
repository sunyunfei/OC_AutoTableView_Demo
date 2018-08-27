//
//  TestModel.h
//  OC_AutoTableView_Demo
//
//  Created by 孙云飞 on 2018/8/27.
//  Copyright © 2018年 孙云飞. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
@interface TestModel : NSObject
@property(nonatomic,copy)NSString *title;
@property(nonatomic,copy)NSString *content;
@property(nonatomic,copy)NSString *icon;
@property(nonatomic,assign)CGFloat height;
- (NSArray *)obtainDatas;
@end
