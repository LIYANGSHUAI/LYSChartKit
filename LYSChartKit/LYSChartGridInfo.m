//
//  LYSChartGridInfo.m
//  LYSChartKitDemo
//
//  Created by HENAN on 2019/8/28.
//  Copyright © 2019 HENAN. All rights reserved.
//

#import "LYSChartGridInfo.h"

@implementation LYSChartGridInfo
- (NSDictionary *)resultDict
{
    NSMutableDictionary *dict = [NSMutableDictionary dictionaryWithDictionary:[super resultDict]];
    if (self.containLabel) {
        [dict setObject:@(self.containLabel) forKey:@"containLabel"];
    }
    if (self.left) {
        [dict setObject:self.left forKey:@"left"];
    }
    if (self.top) {
        [dict setObject:self.top forKey:@"top"];
    }
    if (self.right) {
        [dict setObject:self.right forKey:@"right"];
    }
    if (self.bottom) {
        [dict setObject:self.bottom forKey:@"bottom"];
    }
    
    if (self.backgroundColor) {
        [dict setObject:self.backgroundColor forKey:@"backgroundColor"];
    }
    if (self.borderColor) {
        [dict setObject:self.borderColor forKey:@"borderColor"];
    }
    if (self.borderWidth) {
        [dict setObject:@(self.borderWidth) forKey:@"borderWidth"];
    }
    
    if (self.tooltip) {
        [dict setObject:self.tooltip.resultDict forKey:@"tooltip"];
    }
    
    return dict;
}
@end
