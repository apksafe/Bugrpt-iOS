//
//  WebViewController.m
//  BugrptSDKDemo
//
//  Created by NetEase on 16/1/22.
//  Copyright © 2016年 NetEase. All rights reserved.
//

#import "WebViewController.h"
#import <Bugrpt/NTESJSCrashReporter.h>

@interface WebViewController ()<UIWebViewDelegate>

@property (nonatomic, strong) UIWebView *webView;

@end

@implementation WebViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do view setup here.
    
    UIWebView *webView = [[UIWebView alloc] initWithFrame:self.view.bounds];
    webView.delegate = self;
    webView.scalesPageToFit = YES;//自动对页面进行缩放以适应屏幕
    webView.dataDetectorTypes = UIDataDetectorTypePhoneNumber;//自动检测网页上的电话号码，单击可以拨打
    [self.view addSubview:webView];
    self.webView = webView;

    
    NSString *path = [[NSBundle mainBundle] pathForResource:@"index" ofType:@"html"];
    NSURL* url = [NSURL fileURLWithPath:path];//创建URL
    NSURLRequest* request = [NSURLRequest requestWithURL:url];//创建NSURLRequest
    [webView loadRequest:request];//加载
}

-(BOOL)webView:(UIWebView *)webView shouldStartLoadWithRequest:(NSURLRequest *)request navigationType:(UIWebViewNavigationType)navigationType{
    [[NTESJSCrashReporter sharedInstance] initJSCrashReporterWithWebView:webView injectScript:YES];
    return YES;
}

@end
