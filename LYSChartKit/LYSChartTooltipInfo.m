//
//  LYSChartTooltipInfo.m
//  LYSChartKitDemo
//
//  Created by HENAN on 2019/8/28.
//  Copyright © 2019 HENAN. All rights reserved.
//

#import "LYSChartTooltipInfo.h"

@implementation LYSChartTooltipInfo
- (instancetype)init
{
    self = [super init];
    if (self) {
        self.show = YES;
        self.trigger = @"item";
    }
    return self;
}
- (NSDictionary *)resultDict
{
    NSMutableDictionary *dict = [NSMutableDictionary dictionaryWithDictionary:[super resultDict]];
    [dict setObject:@(self.show) forKey:@"show"];
    [dict setObject:self.trigger forKey:@"trigger"];
    return dict;
}
@end
