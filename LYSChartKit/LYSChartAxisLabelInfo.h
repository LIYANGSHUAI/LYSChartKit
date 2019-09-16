//
//  LYSChartAxisLabelInfo.h
//  LYSChartKitDemo
//
//  Created by HENAN on 2019/9/2.
//  Copyright © 2019 HENAN. All rights reserved.
//

#import "LYSchartInfo.h"

NS_ASSUME_NONNULL_BEGIN

@interface LYSChartAxisLabelInfo : LYSchartInfo
/// 是否显示刻度标签,默认是显示
@property (nonatomic, assign) BOOL show;
/// 标签刻度字体大小
@property (nonatomic, assign) CGFloat fontSize;
/// 坐标轴刻度标签的显示间隔,默认会采用不重叠的方式显示标签
@property (nonatomic, copy) NSString *interval;
/// 刻度标签是否朝内，默认朝外
@property (nonatomic, assign) BOOL inside;
/// 刻度标签旋转的角度，在类目轴的类目标签显示不下的时候可以通过旋转防止标签之间重叠
@property (nonatomic, assign) CGFloat rotate;
/// 刻度标签与轴线之间的距离
@property (nonatomic, assign) CGFloat margin;

/// 刻度标签文字的颜色，默认取 axisLine.lineStyle.color
@property (nonatomic, copy) NSString *color;
/// 标签刻度字体样式 'normal','italic','oblique'
@property (nonatomic, copy) NSString *fontStyle;
/// 标签刻度字体的粗细'normal','bold','bolder','lighter'
@property (nonatomic, copy) NSString *fontWeight;
/// 标签刻度字体背景色 '#123234', 'red', 'rgba(0,23,11,0.3)'。
@property (nonatomic, copy) NSString *backgroundColor;
/// 标签刻度字体边框颜色 '#123234', 'red', 'rgba(0,23,11,0.3)'。
@property (nonatomic, copy) NSString *borderColor;
/// 标签刻度字体边框宽度
@property (nonatomic, assign) CGFloat borderWidth;
/// 标签刻度字体边框圆角
@property (nonatomic, assign) CGFloat borderRadius;

@end

NS_ASSUME_NONNULL_END
