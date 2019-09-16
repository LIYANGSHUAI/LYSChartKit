//
//  LYSChartGridInfo.m
//  LYSChartKitDemo
//
//  Created by HENAN on 2019/8/28.
//  Copyright © 2019 HENAN. All rights reserved.
//

#import "LYSChartGridInfo.h"

@implementation LYSChartGridInfo
- (instancetype)init
{
    self = [super init];
    if (self) {
        self.show = YES;
        self.left = @"10%";
        self.top = @"60";
        self.bottom = @"60";
        self.right = @"10%";
        self.containLabel = NO;
        self.backgroundColor = @"transparent";
        self.borderWidth = 1;
    }
    return self;
}
- (NSDictionary *)resultDict
{
    NSMutableDictionary *dict = [NSMutableDictionary dictionaryWithDictionary:[super resultDict]];
    [dict setObject:@(self.show) forKey:@"show"];
    [dict setObject:@(self.containLabel) forKey:@"containLabel"];
    [dict setObject:self.left forKey:@"left"];
    [dict setObject:self.top forKey:@"top"];
    [dict setObject:self.right forKey:@"right"];
    [dict setObject:self.bottom forKey:@"bottom"];
    [dict setObject:self.backgroundColor forKey:@"backgroundColor"];
    [dict setObject:@(self.borderWidth) forKey:@"borderWidth"];
    if (self.tooltip && self.tooltip.resultDict) {
        [dict setObject:self.tooltip.resultDict forKey:@"tooltip"];
    }
    return dict;
}
@end
