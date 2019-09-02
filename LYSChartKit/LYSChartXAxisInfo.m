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
    NSMutableDictionary *dict = LYSCHARTDICT;
    LYSCHARTSETDICT(dict, @(self.show), @"show");
    LYSCHARTSETDICT(dict, self.type, @"type");
    LYSCHARTSETDICT(dict, self.data, @"data");
    LYSCHARTSETDICT(dict, self.nameTextStyle.resultDict, @"nameTextStyle");
    LYSCHARTSETDICT(dict, self.axisLabel.resultDict, @"axisLabel");
    return dict;
}
@end
