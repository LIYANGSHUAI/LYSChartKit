//
//  LYSChartNameTextStyleInfo.h
//  LYSChartKitDemo
//
//  Created by HENAN on 2019/9/2.
//  Copyright © 2019 HENAN. All rights reserved.
//

#import "LYSchartInfo.h"

NS_ASSUME_NONNULL_BEGIN

@interface LYSChartNameTextStyleInfo : LYSchartInfo
/// 坐标轴名称的颜色，默认取 axisLine.lineStyle.color。
@property (nonatomic, copy) NSString *color;
/// 坐标轴名称文字的字体大小
@property (nonatomic, assign) CGFloat fontSize;
/// 坐标轴名称文字字体的风格
@property (nonatomic, copy) NSString *fontStyle;
/// 坐标轴名称文字字体的粗细
@property (nonatomic, copy) NSString *fontWeight;
/// 坐标轴名称文字的字体系列
@property (nonatomic, copy) NSString *fontFamily;
/// 文字水平对齐方式，默认自动。
/// 'left'
/// 'center'
/// 'right'
@property (nonatomic, copy) NSString *align;
/// 文字垂直对齐方式，默认自动。
/// 'top'
/// 'middle'
/// 'bottom'
@property (nonatomic, copy) NSString *verticalAlign;
/// 行高。
@property (nonatomic, assign) CGFloat lineHeight;
/// 文字块背景色。可以是直接的颜色值，例如：'#123234', 'red', 'rgba(0,23,11,0.3)'。
@property (nonatomic, copy) NSString *backgroundColor;
/// 文字块背景色。可以是直接的颜色值，例如：'#123234', 'red', 'rgba(0,23,11,0.3)'。
@property (nonatomic, copy) NSString *borderColor;
/// 文字块边框宽度。
@property (nonatomic, assign) CGFloat borderWidth;
/// 文字块的圆角。
@property (nonatomic, assign) CGFloat borderRadius;
@end

NS_ASSUME_NONNULL_END
