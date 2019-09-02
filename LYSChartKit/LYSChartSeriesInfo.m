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
    NSMutableDictionary *dict = LYSCHARTDICT;
    LYSCHARTSETDICT(dict, self.type, @"type");
    LYSCHARTSETDICT(dict, self.name, @"name");
    return dict;
}

@end

@implementation LYSChartSeriesBarInfo

- (NSDictionary *)resultDict
{
    NSMutableDictionary *dict = LYSCHARTDICT;
    LYSCHARTSETDICT(dict, self.barWidth, @"barWidth");
    LYSCHARTSETDICT(dict, self.data, @"data");
    return dict;
}

@end
