//
//  LYSChartOption.h
//  LYSChartKitDemo
//
//  Created by HENAN on 2019/8/28.
//  Copyright © 2019 HENAN. All rights reserved.
//

#import "LYSchartInfo.h"
#import "LYSChartGridInfo.h"
#import "LYSChartXAxisInfo.h"
#import "LYSChartYAxisInfo.h"
#import "LYSChartSeriesInfo.h"
NS_ASSUME_NONNULL_BEGIN

@interface LYSChartOption : LYSchartInfo
LYSCHARTADDSTRONGPROPERTY(NSArray<LYSChartGridInfo *> *grids);
LYSCHARTADDSTRONGPROPERTY(NSArray<LYSChartXAxisInfo *> *xAxis);
LYSCHARTADDSTRONGPROPERTY(NSArray<LYSChartYAxisInfo *> *yAxis);
LYSCHARTADDSTRONGPROPERTY(NSArray<LYSChartSeriesInfo *> *series);
@end

NS_ASSUME_NONNULL_END
