//
//  LYSChartGridInfo.h
//  LYSChartKitDemo
//
//  Created by HENAN on 2019/8/28.
//  Copyright © 2019 HENAN. All rights reserved.
//

#import "LYSchartInfo.h"
#import "LYSChartTooltipInfo.h"
NS_ASSUME_NONNULL_BEGIN

@interface LYSChartGridInfo : LYSchartInfo
/// 边距
LYSCHARTADDCOPYPROPERTY(NSString *left);
LYSCHARTADDCOPYPROPERTY(NSString *top);
LYSCHARTADDCOPYPROPERTY(NSString *right);
LYSCHARTADDCOPYPROPERTY(NSString *bottom);
/// gird区域是否包含坐标轴的刻度标签,默认是不包括
LYSCHARTADDASSIGNPROPERTY(BOOL containLabel);
/// 网格背景色
LYSCHARTADDSTRONGPROPERTY(UIColor *backgroundColor);
/// 网格边框颜色
LYSCHARTADDSTRONGPROPERTY(UIColor *borderColor);
/// 网格边框线宽
LYSCHARTADDASSIGNPROPERTY(CGFloat borderWidth);
/// 提示组件
LYSCHARTADDSTRONGPROPERTY(LYSChartTooltipInfo *tooltip);
@end

NS_ASSUME_NONNULL_END
