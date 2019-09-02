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
    NSMutableDictionary *dict = LYSCHARTDICT;
    LYSCHARTSETDICT(dict, @(self.containLabel), @"containLabel")
    LYSCHARTSETDICT(dict, self.left, @"left")
    LYSCHARTSETDICT(dict, self.top, @"top")
    LYSCHARTSETDICT(dict, self.right, @"right")
    LYSCHARTSETDICT(dict, self.bottom, @"bottom")
    LYSCHARTSETDICT(dict, self.backgroundColor, @"backgroundColor")
    LYSCHARTSETDICT(dict, @(self.borderWidth), @"borderWidth")
    LYSCHARTSETDICT(dict, self.tooltip, @"tooltip")
    return dict;
}
@end
