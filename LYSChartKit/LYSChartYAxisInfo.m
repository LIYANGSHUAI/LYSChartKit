//
//  LYSChartYAxisInfo.m
//  LYSChartKitDemo
//
//  Created by HENAN on 2019/8/28.
//  Copyright © 2019 HENAN. All rights reserved.
//

#import "LYSChartYAxisInfo.h"

@implementation LYSChartYAxisInfo
- (instancetype)init
{
    self = [super init];
    if (self) {
        self.position = @"left";
    }
    return self;
}
- (NSDictionary *)resultDict
{
    NSMutableDictionary *dict = [NSMutableDictionary dictionaryWithDictionary:[super resultDict]];
    [dict setObject:self.position forKey:@"position"];
    return dict;
}
@end
