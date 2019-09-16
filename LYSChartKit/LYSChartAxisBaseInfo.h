//
//  LYSChartAxisBaseInfo.h
//  LYSChartKitDemo
//
//  Created by HENAN on 2019/9/3.
//  Copyright © 2019 HENAN. All rights reserved.
//

#import "LYSchartInfo.h"
#import "LYSChartNameTextStyleInfo.h"
#import "LYSChartAxisLabelInfo.h"
NS_ASSUME_NONNULL_BEGIN

@interface LYSChartAxisBaseInfo : LYSchartInfo

/// 实现显示对应轴线
@property (nonatomic, assign) BOOL show;

/// Y 轴相对于默认位置的偏移，在相同的 position 上有多个 Y 轴的时候有用。
@property (nonatomic, assign) CGFloat offset;
/// 坐标轴类型。
/// 'value' 数值轴，适用于连续数据。
/// 'category' 类目轴，适用于离散的类目数据，为该类型时必须通过 data 设置类目数据。
/// 'time' 时间轴，适用于连续的时序数据，与数值轴相比时间轴带有时间的格式化，在刻度计算上也有所不同，例如会根据跨度的范围来决定使用月，星期，日还是小时范围的刻度。
/// 'log' 对数轴。适用于对数数据。
@property (nonatomic, copy) NSString *type;
/// 坐标轴名称
@property (nonatomic, copy) NSString *name;
/// 坐标轴名称的位置
/// 'start'
/// 'middle' 或者 'center'
/// 'end'
@property (nonatomic, copy) NSString *nameLocation;
/// 坐标轴名称的文字样式
@property (nonatomic, strong) LYSChartNameTextStyleInfo *nameTextStyle;
/// 坐标轴名称与轴线之间的距离。
@property (nonatomic, assign) CGFloat nameGap;
/// 坐标轴名字旋转，角度值。
@property (nonatomic, assign) CGFloat nameRotate;
/// 是否是反向坐标轴。
@property (nonatomic, assign) BOOL inverse;
/// 坐标轴刻度最小值。
@property (nonatomic, copy) NSString * __nullable min;
/// 坐标轴刻度最大值。
@property (nonatomic, copy) NSString * __nullable max;
/// 坐标轴刻度标签的相关设置。
@property (nonatomic, strong) LYSChartAxisLabelInfo *axisLabel;
///
@property (nonatomic, strong) NSArray *data;

@end

NS_ASSUME_NONNULL_END
