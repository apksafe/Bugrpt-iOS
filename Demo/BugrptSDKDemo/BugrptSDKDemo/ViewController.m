//
//  ViewController.m
//  BugrptSDKDemo
//
//  Created by NetEase on 15-4-15.
//  Copyright (c) 2015年 NetEase. All rights reserved.
//

#import "ViewController.h"
#import "WebViewController.h"
#import <Bugrpt/NTESCrashReporter.h>
#import <Bugrpt/NTESCrashLogger.h>

@interface ViewController ()


@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
   
    // Dispose of any resources that can be recreated.
}

-(void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
}

- (IBAction)testInvalidArgumentException:(id)sender {
    
    [NTESCrashLogger log:@"InvalidArgumentException"];
    [self invalidArgumentException];
}

- (IBAction)testRangeException:(id)sender {
    [NTESCrashLogger log:@"rangeException"];
    [self rangeException];
}

- (IBAction)testGenericException:(id)sender {
    [self genericexception];
}

- (IBAction)testSignalCrash:(id)sender {
    [NTESCrashLogger log:@"signalCrash"];
    [self signalCrash];
}

- (IBAction)testBlock:(id)sender {
    [NTESCrashLogger log:@"do hard test"];
    [NSThread sleepForTimeInterval:3.0];
}

- (IBAction)testJSException:(id)sender {
    [NTESCrashLogger log:@"testJS"];
    // JS测试
    WebViewController * webview = [[WebViewController alloc] init];
    [self addChildViewController:webview];
    webview.view.frame = CGRectMake(500, 100, 320, 100);
    [self.view addSubview:webview.view];
    self.view.clipsToBounds = NO;
}

- (IBAction)testCaughtException:(id)sender {
    @try {
        NSException *e = [NSException
                          exceptionWithName: @"NSCaughtException"
                          reason: @"user catch a exception"
                          userInfo: nil];
        
        [e raise];
    } @catch (NSException *exception) {
        [[NTESCrashReporter sharedInstance] uploadCaughtException:exception];
        
    } @finally {
        
    }
}

- (void)signalCrash{
    char *test = malloc(10);
    strcpy(test, "test");
    free(test);
    test = NULL;
    test[0] = 'a';
}

- (void)genericexception{
    
    NSMutableArray *arr = [[NSMutableArray alloc] initWithObjects:@"1", @"2", nil];
    for (id elem in arr) {
        [arr removeObject:elem];
    }
}


- (void)invalidArgumentException
{
    NSMutableDictionary *dic = [[NSMutableDictionary alloc] initWithCapacity:4];
    NSString *value = nil;
    [dic setObject:value forKey:@"22"];
}

- (void)rangeException{
    NSArray * array = @[@"bugrpt", @"crash"];
    NSLog(@"bugrpt Test %@", [array objectAtIndex:3]);
    
}

- (NSString *) attachmentForException:(NSException *)exception {
    NSLog(@"APP获取到SDK的异常回调:%@", exception.name);
    return @"收到异常回调";
}
    
@end
