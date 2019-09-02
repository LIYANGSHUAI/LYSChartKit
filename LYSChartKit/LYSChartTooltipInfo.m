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
    NSMutableDictionary *dict = [NSMutableDictionary dictionaryWithDictionary:[super resultDict]];
    if (self.show) {
        [dict setObject:@(self.show) forKey:@"show"];
    }
    if (self.trigger) {
        [dict setObject:self.trigger forKey:@"trigger"];
    }
    return dict;
}
@end
