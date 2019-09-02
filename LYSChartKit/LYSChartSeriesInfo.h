//
//  LYSChartSeriesInfo.h
//  LYSChartKitDemo
//
//  Created by HENAN on 2019/8/28.
//  Copyright © 2019 HENAN. All rights reserved.
//

#import "LYSchartInfo.h"

NS_ASSUME_NONNULL_BEGIN

@interface LYSChartSeriesInfo : LYSchartInfo
LYSCHARTADDCOPYPROPERTY(NSString *type);
LYSCHARTADDCOPYPROPERTY(NSString *name);
@end

@interface LYSChartSeriesBarInfo : LYSChartSeriesInfo
LYSCHARTADDCOPYPROPERTY(NSString *barWidth);
LYSCHARTADDSTRONGPROPERTY(NSArray *data);
@end

NS_ASSUME_NONNULL_END
