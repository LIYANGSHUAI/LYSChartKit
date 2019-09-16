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

/// 是否显示直角坐标系网格
@property (nonatomic, assign) BOOL show;

/// 边距
@property (nonatomic, copy) NSString *left;
@property (nonatomic, copy) NSString *top;
@property (nonatomic, copy) NSString *right;
@property (nonatomic, copy) NSString *bottom;

/// gird区域是否包含坐标轴的刻度标签,默认是不包括
@property (nonatomic, assign) BOOL containLabel;

/// 网格背景色
@property (nonatomic, copy) NSString *backgroundColor;
/// 网格边框颜色
@property (nonatomic, copy) UIColor *borderColor;
/// 网格边框线宽
@property (nonatomic, assign) CGFloat borderWidth;

/// 提示组件
@property (nonatomic, strong) LYSChartTooltipInfo *tooltip;

@end

NS_ASSUME_NONNULL_END
