//
//  AppDelegate.h
//  BugrptSDKDemo
//
//  Created by NetEase on 15-4-15.
//  Copyright (c) 2015年 NetEase. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <Bugrpt/NTESCrashReporter.h>

@interface AppDelegate : UIResponder <UIApplicationDelegate,NTESCrashReporterDelegate>

@property (strong, nonatomic) UIWindow *window;


@end

