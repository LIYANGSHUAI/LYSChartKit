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
    //        NSDictionary *dict = @{
    //                               @"xAxis": @{
    //                                       @"type": @"category",
    //                                       @"data": @[@"Mon", @"Tue", @"Wed", @"Thu", @"Fri", @"Sat", @"Sun"]
    //                                       },
    //                               @"yAxis": @{
    //                                       @"type": @"value"
    //                                       },
    //                               @"series": @[@{
    //                                                @"data": @[@820, @932, @901, @934, @1290, @1330, @1320],
    //                                                @"type": @"line"
    //                                                }]
    //                               };
    
    //    NSDictionary *dict = @{
    //                           @"angleAxis": @{
    //                                   @"type": @"category",
    //                                   @"data": @[@"周一", @"周二", @"周三", @"周四", @"周五", @"周六", @"周日"],
    //                                   @"z": @10
    //                                   },
    //                           @"radiusAxis": @{
    //                                   },
    //                           @"polar": @{
    //                                   },
    //                           @"series": @[@{
    //                                            @"type": @"bar",
    //                                            @"data": @[@1, @2, @3, @4, @3, @5, @1],
    //                                            @"coordinateSystem": @"polar",
    //                                            @"name": @"A",
    //                                            @"stack": @"a"
    //                                            }, @{
    //                                            @"type": @"bar",
    //                                            @"data": @[@2, @4, @6, @1, @3, @2, @1],
    //                                            @"coordinateSystem": @"polar",
    //                                            @"name": @"B",
    //                                            @"stack": @"a"
    //                                            }, @{
    //                                            @"type": @"bar",
    //                                            @"data": @[@1, @2, @3, @4, @1, @2, @5],
    //                                            @"coordinateSystem": @"polar",
    //                                            @"name": @"C",
    //                                            @"stack": @"a"
    //                                            }],
    //                           @"legend": @{
    //                                   @"show": @(YES),
    //                                   @"data": @[@"A", @"B", @"C"]
    //                                   }
    //                           };
    //
    
//
//    NSDictionary *dict = @{
//                           @"color": @[@"#3398DB"],
//                           @"tooltip" : @{
//                                   @"trigger" : @"axis",
//                                   @"axisPointer" : @{
//                                           @"type" : @"shadow"
//                                           }
//                                   },
//                           @"grid": @{
//                                   @"left": @"3%",
//                                   @"right": @"4%",
//                                   @"bottom": @"3%",
//                                   @"containLabel": @(YES)
//                                   },
//                           @"xAxis" : @[
//                                   @{
//                                       @"type" : @"category",
//                                       @"data" : @[@"Mon", @"Tue", @"Wed", @"Thu", @"Fri", @"Sat", @"Sun"],
//                                       @"axisTick": @{
//                                               @"alignWithLabel": @(YES)
//                                               }
//                                       }
//                                   ],
//                           @"yAxis" : @[
//                                   @{
//                                       @"type" : @"value"
//                                       }
//                                   ],
//                           @"series" : @[
//                                   @{
//                                       @"name":@"直接访问",
//                                       @"type":@"bar",
//                                       @"barWidth": @"60%",
//                                       @"data":@[@10, @52, @200, @334, @390, @330, @220]
//                                       }
//                                   ]
//                           };
//
//
    
    LYSChartOption *optons = [[LYSChartOption alloc] init];
    LYSChartGridInfo *girdInfo = [[LYSChartGridInfo alloc] init];
    girdInfo.left = @"10%";
    girdInfo.top = @"3%";
    girdInfo.right = @"3%";
    girdInfo.bottom = @"3%";
    optons.grids = @[girdInfo];
    
    LYSChartXAxisInfo *xAxisInfo = [[LYSChartXAxisInfo alloc] init];
    xAxisInfo.type = @"category";
    xAxisInfo.data = @[@"Mon", @"Tue", @"Wed", @"Thu", @"Fri", @"Sat", @"Sun"];
    xAxisInfo.show = YES;
    optons.xAxis = @[xAxisInfo];
    
    LYSChartYAxisInfo *yAxisInfo = [[LYSChartYAxisInfo alloc] init];
    yAxisInfo.type = @"value";
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
