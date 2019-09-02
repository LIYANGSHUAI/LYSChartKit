//
//  LYSChartXAxisInfo.h
//  LYSChartKitDemo
//
//  Created by HENAN on 2019/8/28.
//  Copyright © 2019 HENAN. All rights reserved.
//

#import "LYSchartInfo.h"
#import "LYSChartNameTextStyleInfo.h"
#import "LYSChartAxisLabelInfo.h"
NS_ASSUME_NONNULL_BEGIN

@interface LYSChartXAxisInfo : LYSchartInfo
// 是否显示X轴
LYSCHARTADDASSIGNPROPERTY(BOOL show);
// 坐标轴类型, value, category, log
LYSCHARTADDCOPYPROPERTY(NSString *type);
LYSCHARTADDSTRONGPROPERTY(NSArray *data);

LYSCHARTADDSTRONGPROPERTY(LYSChartNameTextStyleInfo *nameTextStyle);
LYSCHARTADDSTRONGPROPERTY(LYSChartAxisLabelInfo *axisLabel);
@end

NS_ASSUME_NONNULL_END
