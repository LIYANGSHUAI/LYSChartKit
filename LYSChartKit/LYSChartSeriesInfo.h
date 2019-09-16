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
@property (nonatomic, copy) NSString *type;
@property (nonatomic, copy) NSString *name;
@end

@interface LYSChartSeriesBarInfo : LYSChartSeriesInfo
@property (nonatomic, copy) NSString *barWidth;
@property (nonatomic, copy) NSArray *data;
@end

NS_ASSUME_NONNULL_END
