//
//  LYSChartDefine.h
//  LYSChartKitDemo
//
//  Created by HENAN on 2019/9/2.
//  Copyright © 2019 HENAN. All rights reserved.
//

#ifndef LYSChartDefine_h
#define LYSChartDefine_h

#define LYSCHARTADDSTRONGPROPERTY(A) \
@property (nonatomic, strong) A

#define LYSCHARTADDASSIGNPROPERTY(A) \
@property (nonatomic, assign) A

#define LYSCHARTADDCOPYPROPERTY(A) \
@property (nonatomic, copy) A

#define LYSCHARTSETDICT(A, B, C) \
if (B != nil) { \
[A setObject:B forKey:C]; \
}

#define LYSCHARTDICT [NSMutableDictionary dictionaryWithDictionary:[super resultDict]]

#endif /* LYSChartDefine_h */
