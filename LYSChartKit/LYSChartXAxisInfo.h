//
//  LYSChartXAxisInfo.h
//  LYSChartKitDemo
//
//  Created by HENAN on 2019/8/28.
//  Copyright © 2019 HENAN. All rights reserved.
//

#import "LYSchartInfo.h"
#import "LYSChartAxisBaseInfo.h"

NS_ASSUME_NONNULL_BEGIN

@interface LYSChartXAxisInfo : LYSChartAxisBaseInfo
/// X轴的位置 top, bottom
@property (nonatomic, copy) NSString *position;
@end

NS_ASSUME_NONNULL_END
