//
//  TMCommand.m
//  命令模式2
//
//  Created by zhongding on 2018/6/26.
//  Copyright © 2018年 zhongding. All rights reserved.
//

#import "TMCommand.h"
@interface TMCommand()
//

@end
@implementation TMCommand

- (instancetype)initWithMachine:(TMMachine *)machine{
    if(self = [super init]){
        self.machine = machine;
    }
    return self;
}

@end
