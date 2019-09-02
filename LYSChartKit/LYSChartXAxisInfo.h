//
//  LYSChartXAxisInfo.h
//  LYSChartKitDemo
//
//  Created by HENAN on 2019/8/28.
//  Copyright © 2019 HENAN. All rights reserved.
//

#import "LYSchartInfo.h"

NS_ASSUME_NONNULL_BEGIN

@interface LYSChartXAxisInfo : LYSchartInfo
// 是否显示X轴
@property (nonatomic, assign) BOOL show;
// 坐标轴类型, value, category, log
@property (nonatomic, copy) NSString *type;

@property (nonatomic, strong) NSArray *data;

@end

NS_ASSUME_NONNULL_END
