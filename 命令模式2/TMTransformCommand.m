//
//  TMTransformCommand.m
//  命令模式2
//
//  Created by zhongding on 2018/6/26.
//  Copyright © 2018年 zhongding. All rights reserved.
//

#import "TMTransformCommand.h"

@implementation TMTransformCommand

- (void)execute{
    [self.machine toTransform];
}

@end
