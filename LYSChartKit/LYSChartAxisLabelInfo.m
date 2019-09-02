//
//  LYSChartAxisLabelInfo.m
//  LYSChartKitDemo
//
//  Created by HENAN on 2019/9/2.
//  Copyright © 2019 HENAN. All rights reserved.
//

#import "LYSChartAxisLabelInfo.h"

@implementation LYSChartAxisLabelInfo
- (instancetype)init
{
    self = [super init];
    if (self) {
        self.show = YES;
    }
    return self;
}
- (NSDictionary *)resultDict
{
    NSMutableDictionary *dict = LYSCHARTDICT;
    LYSCHARTSETDICT(dict, @(self.fontSize), @"fontSize");
    LYSCHARTSETDICT(dict, @(self.show), @"show");
    LYSCHARTSETDICT(dict, self.interval, @"interval");
    LYSCHARTSETDICT(dict, @(self.inside), @"inside");
    LYSCHARTSETDICT(dict, @(self.rotate), @"rotate");
    LYSCHARTSETDICT(dict, @(self.margin), @"margin");
    LYSCHARTSETDICT(dict, self.color, @"color");
    LYSCHARTSETDICT(dict, self.fontStyle, @"fontStyle");
    LYSCHARTSETDICT(dict, self.fontWeight, @"fontWeight");
    LYSCHARTSETDICT(dict, self.backgroundColor, @"backgroundColor");
    LYSCHARTSETDICT(dict, self.borderColor, @"borderColor");
    LYSCHARTSETDICT(dict, @(self.borderWidth), @"borderWidth");
    LYSCHARTSETDICT(dict, @(self.borderRadius), @"borderRadius");
    return dict;
}
@end
