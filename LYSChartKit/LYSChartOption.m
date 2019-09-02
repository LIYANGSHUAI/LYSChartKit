//
//  LYSChartOption.m
//  LYSChartKitDemo
//
//  Created by HENAN on 2019/8/28.
//  Copyright © 2019 HENAN. All rights reserved.
//

#import "LYSChartOption.h"

@implementation LYSChartOption



- (NSDictionary *)resultDict
{
    NSMutableDictionary *dict = [NSMutableDictionary dictionaryWithDictionary:[super resultDict]];
    if (self.grids && self.grids.count != 0) {
        [dict setObject:[self.grids[0] resultDict] forKey:@"grid"];
    }
    if (self.xAxis && self.xAxis.count != 0) {
        [dict setObject:[self.xAxis[0] resultDict] forKey:@"xAxis"];
    }
    if (self.yAxis && self.yAxis.count != 0) {
        [dict setObject:[self.yAxis[0] resultDict] forKey:@"yAxis"];
    }
    if (self.series && self.series.count != 0) {
        [dict setObject:[self.series[0] resultDict] forKey:@"series"];
    }
    return dict;
}


- (NSString *)aaa
{
    return @"1111"
}

- (void)setAaa:(NSString *)aaa
{
    
}

@end
