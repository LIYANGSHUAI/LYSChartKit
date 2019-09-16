//
//  LYSChartAxisBaseInfo.m
//  LYSChartKitDemo
//
//  Created by HENAN on 2019/9/3.
//  Copyright © 2019 HENAN. All rights reserved.
//

#import "LYSChartAxisBaseInfo.h"

@implementation LYSChartAxisBaseInfo
- (instancetype)init
{
    self = [super init];
    if (self) {
        self.show = YES;
        self.offset = 0;
        self.type = @"category";
        self.name = @"";
        self.nameLocation = @"end";
        self.nameGap = 15;
        self.nameRotate = 0;
        self.inverse = NO;
        self.min = nil;
        self.max = nil;
        self.data = @[];
    }
    return self;
}
- (NSDictionary *)resultDict
{
    NSMutableDictionary *dict = [NSMutableDictionary dictionaryWithDictionary:[super resultDict]];
    [dict setObject:@(self.show) forKey:@"show"];
    [dict setObject:@(self.offset) forKey:@"offset"];
    [dict setObject:self.type forKey:@"type"];
    [dict setObject:self.name forKey:@"name"];
    [dict setObject:self.nameLocation forKey:@"nameLocation"];
    [dict setObject:@(self.nameGap) forKey:@"nameGap"];
    [dict setObject:@(self.nameRotate) forKey:@"nameRotate"];
    [dict setObject:@(self.inverse) forKey:@"inverse"];
    if (self.min) {
        [dict setObject:self.min forKey:@"min"];
    }
    if (self.max) {
        [dict setObject:self.max forKey:@"max"];
    }
    [dict setObject:self.data forKey:@"data"];
    if (self.nameTextStyle && self.nameTextStyle.resultDict) {
        [dict setObject:self.nameTextStyle.resultDict forKey:@"nameTextStyle"];
    }
    if (self.axisLabel && self.axisLabel.resultDict) {
        [dict setObject:self.axisLabel.resultDict forKey:@"axisLabel"];
    }
    return dict;
}
@end
