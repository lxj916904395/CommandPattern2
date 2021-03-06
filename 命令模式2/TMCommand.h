//
//  TMCommand.h
//  命令模式2
//
//  Created by zhongding on 2018/6/26.
//  Copyright © 2018年 zhongding. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "TMCommandProtocol.h"
#import "TMMachine.h"

@interface TMCommand : NSObject<TMCommandProtocol>
@property(strong ,nonatomic) TMMachine *machine;

- (instancetype)initWithMachine:(TMMachine *)machine;
@end
