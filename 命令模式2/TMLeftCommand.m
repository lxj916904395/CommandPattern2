//
//  TMLeftCommand.m
//  命令模式2
//
//  Created by zhongding on 2018/6/26.
//  Copyright © 2018年 zhongding. All rights reserved.
//

#import "TMLeftCommand.h"

@implementation TMLeftCommand

- (void)execute{
    [self.machine toLeft];
}

@end
