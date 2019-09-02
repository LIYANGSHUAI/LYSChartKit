//
//  LYSChartBaseView.m
//  LYSChartKitDemo
//
//  Created by HENAN on 2019/8/27.
//  Copyright © 2019 HENAN. All rights reserved.
//

#import "LYSChartBaseView.h"

@interface LYSChartBaseView ()<WKUIDelegate,WKNavigationDelegate>
@property (nonatomic, copy) NSString *htmlStr;
@end

@implementation LYSChartBaseView

- (instancetype)initWithFrame:(CGRect)frame resourceHTML:(NSString *)htmlStr
{
    self = [super initWithFrame:frame];
    if (self) {
        self.htmlStr = htmlStr;
        [self customSubViews];
    }
    return self;
}

- (void)customSubViews
{
    WKWebViewConfiguration *config = [[WKWebViewConfiguration alloc] init];
    self.webView = [[WKWebView alloc] initWithFrame:self.bounds configuration:config];
    self.webView.UIDelegate = self;
    self.webView.navigationDelegate = self;
    self.webView.userInteractionEnabled = NO;
    [self addSubview:self.webView];
    NSString *filePath = [[NSBundle mainBundle] pathForResource:self.htmlStr ofType:@"html"];
    NSURL *url = [NSURL fileURLWithPath:filePath];
    NSURLRequest *request = [NSURLRequest requestWithURL:url];
    [self.webView loadRequest:request];
}

- (void)webView:(WKWebView *)webView didFinishNavigation:(WKNavigation *)navigation {}

@end
