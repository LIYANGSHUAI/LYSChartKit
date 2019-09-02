//
//  LYSChartYAxisInfo.m
//  LYSChartKitDemo
//
//  Created by HENAN on 2019/8/28.
//  Copyright © 2019 HENAN. All rights reserved.
//

#import "LYSChartYAxisInfo.h"

@implementation LYSChartYAxisInfo
- (NSDictionary *)resultDict
{
    NSMutableDictionary *dict = [NSMutableDictionary dictionaryWithDictionary:[super resultDict]];
    if (self.type) {
        [dict setObject:self.type forKey:@"type"];
    }
    return dict;
}
@end
