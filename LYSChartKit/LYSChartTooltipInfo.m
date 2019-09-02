//
//  LYSChartTooltipInfo.m
//  LYSChartKitDemo
//
//  Created by HENAN on 2019/8/28.
//  Copyright © 2019 HENAN. All rights reserved.
//

#import "LYSChartTooltipInfo.h"

@implementation LYSChartTooltipInfo
- (NSDictionary *)resultDict
{
    NSMutableDictionary *dict = LYSCHARTDICT;
    LYSCHARTSETDICT(dict, @(self.show), @"show");
    LYSCHARTSETDICT(dict, self.trigger, @"trigger");
    return dict;
}
@end
