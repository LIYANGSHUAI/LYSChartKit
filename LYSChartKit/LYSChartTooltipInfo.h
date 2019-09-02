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
// 显示和隐藏
LYSCHARTADDASSIGNPROPERTY(BOOL show);
LYSCHARTADDCOPYPROPERTY(NSString *trigger);
@end

NS_ASSUME_NONNULL_END
