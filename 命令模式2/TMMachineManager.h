//
//  TMMachineManager.h
//  命令模式2
//
//  Created by zhongding on 2018/6/26.
//  Copyright © 2018年 zhongding. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "TMLeftCommand.h"
#import "TMRightCommand.h"
#import "TMTransformCommand.h"

@interface TMMachineManager : NSObject

- (instancetype)initLeft:(TMLeftCommand *)left right:(TMRightCommand *)right transform:(TMTransformCommand *)transform;

- (void)toLeft;
- (void)toRight;
- (void)toTransform;

- (void)recall;
- (void)recallAll;
@end
