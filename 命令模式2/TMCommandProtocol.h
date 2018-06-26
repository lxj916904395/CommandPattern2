
//
//  TMCommandProtocol.h
//  命令模式2
//
//  Created by zhongding on 2018/6/26.
//  Copyright © 2018年 zhongding. All rights reserved.
//

#ifndef TMCommandProtocol_h
#define TMCommandProtocol_h

#import <Foundation/Foundation.h>

@protocol TMCommandProtocol <NSObject>
- (void)execute;
@end
#endif /* TMCommandProtocol_h */
