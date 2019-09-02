//
//  LYSChartXAxisInfo.m
//  LYSChartKitDemo
//
//  Created by HENAN on 2019/8/28.
//  Copyright © 2019 HENAN. All rights reserved.
//

#import "LYSChartXAxisInfo.h"

@implementation LYSChartXAxisInfo
- (NSDictionary *)resultDict
{
    NSMutableDictionary *dict = [NSMutableDictionary dictionaryWithDictionary:[super resultDict]];
    if (self.show) {
        [dict setObject:@(self.show) forKey:@"show"];
    }
    if (self.type) {
        [dict setObject:self.type forKey:@"type"];
    }
    if (self.data) {
        [dict setObject:self.data forKey:@"data"];
    }
    return dict;
}
@end
