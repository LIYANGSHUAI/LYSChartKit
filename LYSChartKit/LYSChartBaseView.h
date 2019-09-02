//
//  LYSChartBaseView.h
//  LYSChartKitDemo
//
//  Created by HENAN on 2019/8/27.
//  Copyright © 2019 HENAN. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <WebKit/WebKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface LYSChartBaseView : UIView
@property (nonatomic, strong) WKWebView *webView;
- (instancetype)initWithFrame:(CGRect)frame resourceHTML:(NSString *)htmlStr;
- (void)webView:(WKWebView *)webView didFinishNavigation:(WKNavigation *)navigation;
@end

NS_ASSUME_NONNULL_END
