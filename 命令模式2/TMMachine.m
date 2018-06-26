//
//  TMMachine.m
//  命令模式2
//
//  Created by zhongding on 2018/6/26.
//  Copyright © 2018年 zhongding. All rights reserved.
//
#pragma mark ***************** 接收者

#import "TMMachine.h"

@implementation TMMachine

- (void)toLeft{
    NSLog(@"向左");
}
- (void)toRight{
    NSLog(@"向右");
}

- (void)toTransform{
    NSLog(@"变形");
}

@end
