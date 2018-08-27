//
//  TestModel.m
//  OC_AutoTableView_Demo
//
//  Created by 孙云飞 on 2018/8/27.
//  Copyright © 2018年 孙云飞. All rights reserved.
//

#import "TestModel.h"

@implementation TestModel


- (NSArray *)obtainDatas{
    
    TestModel *t1 = [[TestModel alloc]init];
    t1.title = @"之前的文章讲述了在RN项目中如何使";
    t1.content = @"之前的文章讲述了在RN项目中如何使用NavigationBar，如何调用原生模块，以及集成下拉刷新和上拉加载更多的功能，今天介绍一个第三方插件react-native-tab-navigator，讲述我是如何使用它在RN项目中使用TabBar";
    t1.icon = @"http://img0.imgtn.bdimg.com/it/u=1590577309,1753287767&fm=26&gp=0.jpg";
    
    TestModel *t2 = [[TestModel alloc]init];
    t2.title = @"就我的demo来说";
    t2.content = @"三月，醉一场青春的流年。慢步在三月的春光里，走走停停，看花开嫣然，看春雨绵绵，感受春风拂面，春天，就是青春的流年。青春，是人生中最美的风景。青春，是一场花开的遇见；青春，是一场痛并快乐着的旅行；青春，是一场轰轰烈烈的比赛；青春，是一场鲜衣奴马的争荣岁月；青春，是一场风花雪月的光阴。";
    t2.icon = @"http://img.liuxue86.com/2016/0113/42f43536.jpg";
    
    TestModel *t3 = [[TestModel alloc]init];
    t3.title = @"青春往事，多么甜蜜；青春岁月，多么靓丽；青春流年，如火如荼。青春里，我们向着梦想前进";
    t3.content = @"三月的鲜花，一树树，一束束，一簇簇，而青春，就是像三月的鲜花一样美丽迷人，生机盎然，姹紫嫣红，生机勃勃。三月，是青春里最美最温暖的风景。三月的美，就像青春的美，充满活力，充满生机，充满昂扬的斗志。三月的美，就像青春的花季，在那里我们可以感受青春的跳动与感动，感受青春的曼妙与奇妙；感受青春的悸动与心跳。";
    t3.icon = @"http://uploads.xuexila.com/allimg/1609/867-1609201R506.jpg";
    
    TestModel *t4 = [[TestModel alloc]init];
    t4.title = @"青春，如三月的春光";
    t4.content = @"青春，如三月的春光，安暖向阳。在美丽的青春年华，我们手牵手，肩并肩，跨过岁月山河，跨过锦瑟流年，跨过天涯海角，在三月的春光里沐浴金色的光泽。三月的春光，让青春的我们看到希望，看到自己有一颗年轻跳动的心，看到蓝天白云，看到明媚的灿烂。三月的春光，温暖无比，就像我们的青春，有着长辈的呵护，有着老师的循循教导，它们就像春光，照耀着我们年轻的心。青春，如三月的春雨，我们在春雨中得到滋润。春雨，淅淅沥沥，纷纷扬扬，打在青春的雨季，打在我们心里，打在我们的生活里，打在我们的生命中，打在我们的灵魂深处。一场春雨，滋润着我们的青春流年，让我们快乐成长，让我们如沐春雨，让我们感受亲恩。三月的春雨，就像我们的父母，用他们的爱心，滋润着我们幼小不安的心灵";
    t4.icon = @"http://img.zcool.cn/community/01d66a579c1d0e0000018c1b7dd7cf.jpg@1280w_1l_2o_100sh.jpg";
    
    return @[t1,t2,t3,t4,t1,t2,t3,t4];
}
@end
