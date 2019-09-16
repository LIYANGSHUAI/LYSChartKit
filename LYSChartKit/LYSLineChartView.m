//
//  LYSLineChartView.m
//  LYSChartKitDemo
//
//  Created by HENAN on 2019/8/27.
//  Copyright © 2019 HENAN. All rights reserved.
//

#import "LYSLineChartView.h"
#import "LYSChartOption.h"

@implementation LYSLineChartView

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame resourceHTML:@"line-simple"];
    if (self) {
        self.backgroundColor = [UIColor greenColor];
    }
    return self;
}

- (void)webView:(WKWebView *)webView didFinishNavigation:(WKNavigation *)navigation
{
    [super webView:webView didFinishNavigation:navigation];
    
    LYSChartOption *optons = [[LYSChartOption alloc] init];
    LYSChartGridInfo *girdInfo = [[LYSChartGridInfo alloc] init];
    girdInfo.left = @"10%";
    girdInfo.top = @"3%";
    girdInfo.right = @"3%";
    girdInfo.bottom = @"10%";
    optons.grids = @[girdInfo];
    
    LYSChartXAxisInfo *xAxisInfo = [[LYSChartXAxisInfo alloc] init];
    xAxisInfo.type = @"category";
    xAxisInfo.data = @[@"Mon", @"Tue", @"Wed", @"Thu", @"Fri", @"Sat", @"Sun"];
    xAxisInfo.show = YES;
    
    LYSChartAxisLabelInfo *info = [[LYSChartAxisLabelInfo alloc] init];
    info.fontSize = 25;
    xAxisInfo.axisLabel = info;
    optons.xAxis = @[xAxisInfo];
    
    LYSChartYAxisInfo *yAxisInfo = [[LYSChartYAxisInfo alloc] init];
    yAxisInfo.type = @"value";
    yAxisInfo.axisLabel = info;
    optons.yAxis = @[yAxisInfo];
    
    LYSChartSeriesBarInfo *seriesInfo = [[LYSChartSeriesBarInfo alloc] init];
    seriesInfo.type = @"line";
    seriesInfo.name = @"直接访问";
    seriesInfo.data = @[@10, @52, @200, @334, @390, @330, @220];
    optons.series = @[seriesInfo];
    
    NSLog(@"%@",optons.resultDict);

    
    NSData *data = [NSJSONSerialization dataWithJSONObject:optons.resultDict
                                                   options:(NSJSONWritingPrettyPrinted)
                                                     error:nil];
    NSString *str = [[NSString alloc] initWithData:data
                                          encoding:NSUTF8StringEncoding];
    NSString *jsStr = [NSString stringWithFormat:@"initData(%@)",str];
    [self.webView evaluateJavaScript:jsStr completionHandler:^(id _Nullable HTMLSource, NSError * _Nullable error) {
        
    }];
}

@end
