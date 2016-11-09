//
//  BugrptLog.h
//
//  Created by Monkey on 15/11/25.
//  Copyright © 2015年 Netease. All rights reserved.
//

#import <Foundation/Foundation.h>

// Log level for Bugrpt Logger
typedef NS_ENUM(NSUInteger, BGRLogLevel) {
    BGRLogLevelSilent    = 0,      // 00000
    BGRLogLevelError     = 1 << 0, // 00001
    BGRLogLevelWarning   = 1 << 1, // 00010
    BGRLogLevelInfo      = 1 << 2, // 00100
    BGRLogLevelDebug     = 1 << 3, // 01000
    BGRLogLevelVerbose   = 1 << 4, // 10000
};

#pragma mark - Interface
@interface NTESCrashLogger : NSObject

/**
 *    @brief  初始化日志模块。如果不调用的话，level默认BGRLogLevelVerbose，printConsole默认NO
 *    @param level 设置默认日志控制级别,该级别以上的log才会打印(上报)
 *    @param printConsole 是否打印到控制台
 */
+ (void)initLogger:(BGRLogLevel)level consolePrint:(BOOL)printConsole;

/**
 *    @brief  打印(上报)指定级别日志。level的值为初始时设置的值或者默认值
 *    @param format 格式化语句
 */
+ (void)log:(NSString *)format, ...;

/**
 *    @brief  打印(上报)指定级别日志
 *    @param level 设置日志级别，显示的日志级别
 *    @param format 格式化语句
 */
+ (void)level:(BGRLogLevel)level log:(NSString *)format, ...;

@end
