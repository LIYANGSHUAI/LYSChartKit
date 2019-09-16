//
//  LYSChartTooltipInfo.h
//  LYSChartKitDemo
//
//  Created by HENAN on 2019/8/28.
//  Copyright © 2019 HENAN. All rights reserved.
//

#import "LYSchartInfo.h"

NS_ASSUME_NONNULL_BEGIN

@interface LYSChartTooltipInfo : LYSchartInfo
/// 是否显示提示框组件，包括提示框浮层和 axisPointer。
@property (nonatomic, assign) BOOL show;
/// 触发类型。 'item'  'axis'  'none'
@property (nonatomic, copy) NSString *trigger;
@end

NS_ASSUME_NONNULL_END
