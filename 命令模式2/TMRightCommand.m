//
//  TMRightCommand.m
//  命令模式2
//
//  Created by zhongding on 2018/6/26.
//  Copyright © 2018年 zhongding. All rights reserved.
//

#import "TMRightCommand.h"

@implementation TMRightCommand

- (void)execute{
    [self.machine toRight];
}

@end
