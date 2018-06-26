//
//  main.m
//  命令模式2
//
//  Created by zhongding on 2018/6/26.
//  Copyright © 2018年 zhongding. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "TMMachineManager.h"
#import "TMMachine.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
//        NSLog(@"Hello, World!");
        
        TMMachine *machine = [TMMachine new];
        
        TMLeftCommand *left = [[TMLeftCommand alloc] initWithMachine:machine];
        TMRightCommand *right = [[TMRightCommand alloc] initWithMachine:machine];
        TMTransformCommand *transform = [[TMTransformCommand alloc] initWithMachine:machine];
        
        TMMachineManager *manager = [[TMMachineManager alloc] initLeft:left right:right transform:transform];

        [manager toLeft];
        [manager toRight];
         [manager toRight];
         [manager toRight];
//        [manager toTransform];
        
        
        [manager recallAll];
    }
    return 0;
}
