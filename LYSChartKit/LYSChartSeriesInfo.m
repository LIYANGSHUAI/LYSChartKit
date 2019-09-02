//
//  LYSChartSeriesInfo.m
//  LYSChartKitDemo
//
//  Created by HENAN on 2019/8/28.
//  Copyright © 2019 HENAN. All rights reserved.
//

#import "LYSChartSeriesInfo.h"

@implementation LYSChartSeriesInfo

- (NSDictionary *)resultDict
{
    NSMutableDictionary *dict = [NSMutableDictionary dictionary];
    if (self.type) {
        [dict setObject:self.type forKey:@"type"];
    }
    if (self.name) {
        [dict setObject:self.name forKey:@"name"];
    }
    return dict;
}

@end

@implementation LYSChartSeriesBarInfo

- (NSDictionary *)resultDict
{
    NSMutableDictionary *dict = [NSMutableDictionary dictionaryWithDictionary:[super resultDict]];
    if (self.barWidth) {
        [dict setObject:self.barWidth forKey:@"barWidth"];
    }
    if (self.data) {
        [dict setObject:self.data forKey:@"data"];
    }
    return dict;
}

@end
