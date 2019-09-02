//
//  LYSChartNameTextStyleInfo.m
//  LYSChartKitDemo
//
//  Created by HENAN on 2019/9/2.
//  Copyright © 2019 HENAN. All rights reserved.
//

#import "LYSChartNameTextStyleInfo.h"

@implementation LYSChartNameTextStyleInfo
- (NSDictionary *)resultDict
{
    NSMutableDictionary *dict = LYSCHARTDICT;
    LYSCHARTSETDICT(dict, @(self.fontSize), @"fontSize");
    return dict;
}
@end
