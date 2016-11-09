//
//  ViewController.h
//  BugrptSDKDemo
//
//  Created by NetEase on 15-4-15.
//  Copyright (c) 2015年 NetEase. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <Bugrpt/NTESCrashReporter.h>

@interface ViewController : UIViewController <NTESCrashReporterDelegate>

- (IBAction)testInvalidArgumentException:(id)sender;
- (IBAction)testRangeException:(id)sender;
- (IBAction)testGenericException:(id)sender;
- (IBAction)testSignalCrash:(id)sender;
- (IBAction)testBlock:(id)sender;
- (IBAction)testJSException:(id)sender;
- (IBAction)testCaughtException:(id)sender;

@end

