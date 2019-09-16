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
        self.interval = @"auto";
        self.fontSize = 15;
        self.inside = NO;
        self.rotate = 0;
        self.margin = 8;
        self.color = @"#555555";
        self.fontStyle = @"normal";
        self.fontWeight = @"normal";
        self.backgroundColor = @"transparent";
        self.borderColor = @"transparent";
        self.borderWidth = 0;
        self.borderRadius = 0;
    }
    return self;
}
- (NSDictionary *)resultDict
{
    NSMutableDictionary *dict = [NSMutableDictionary dictionaryWithDictionary:[super resultDict]];
    [dict setObject:@(self.show) forKey:@"show"];
    [dict setObject:self.interval forKey:@"interval"];
    [dict setObject:@(self.inside) forKey:@"inside"];
    [dict setObject:@(self.rotate) forKey:@"rotate"];
    [dict setObject:@(self.margin) forKey:@"margin"];
    [dict setObject:self.color forKey:@"color"];
    [dict setObject:self.fontStyle forKey:@"fontStyle"];
    [dict setObject:self.fontWeight forKey:@"fontWeight"];
    [dict setObject:self.backgroundColor forKey:@"backgroundColor"];
    [dict setObject:self.borderColor forKey:@"borderColor"];
    [dict setObject:@(self.borderWidth) forKey:@"borderWidth"];
    [dict setObject:@(self.borderRadius) forKey:@"borderRadius"];
    [dict setObject:@(self.fontSize) forKey:@"fontSize"];
    return dict;
}
@end
