//
//  TMMachineManager.m
//  命令模式2
//
//  Created by zhongding on 2018/6/26.
//  Copyright © 2018年 zhongding. All rights reserved.
//
#pragma mark ***************** 请求者

#import "TMMachineManager.h"
@interface TMMachineManager()
//
@property(strong ,nonatomic) TMLeftCommand *leftCommand;
@property(strong ,nonatomic) TMRightCommand *rightCommand;
@property(strong ,nonatomic) TMTransformCommand *transformCommand;

//
@property(strong ,nonatomic) NSMutableArray *commands;


@end
@implementation TMMachineManager

- (instancetype)initLeft:(TMLeftCommand *)left right:(TMRightCommand *)right transform:(TMTransformCommand *)transform{
    if (self = [super init]) {
        self.leftCommand = left;
        self.rightCommand = right;
        self.transformCommand = transform;
        self.commands = @[].mutableCopy;
    }
    return self;
}

- (void)toLeft{
    [self.leftCommand execute];
    [self.commands addObject:self.leftCommand];
}
- (void)backToLeft{
    [self.leftCommand execute];
}


- (void)toRight{
    [self.rightCommand execute];
    [self.commands addObject:self.rightCommand];
}

- (void)backToRight{
    [self.rightCommand execute];
}


- (void)toTransform{
    [self.transformCommand execute];
    [self.commands addObject:self.rightCommand];
}

//撤销上一步
- (void)recall{
    if (self.commands.count) {
        //取最后一步操作的反操作

        id <TMCommandProtocol> target = [self.commands lastObject];
        if ([target isKindOfClass:[TMLeftCommand class]]) {
            
            [self backToRight];
            
        }else if ([target isKindOfClass:[TMRightCommand class]]){
            
            [self backToLeft];
            
        }else{
            
        }
        [self.commands removeLastObject];
    }
}

//撤销全部
- (void)recallAll{
    
    while (self.commands.count) {
        [self recall];
    }
}

@end
