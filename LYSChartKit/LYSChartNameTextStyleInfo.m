//
//  LYSChartNameTextStyleInfo.m
//  LYSChartKitDemo
//
//  Created by HENAN on 2019/9/2.
//  Copyright © 2019 HENAN. All rights reserved.
//

#import "LYSChartNameTextStyleInfo.h"

@implementation LYSChartNameTextStyleInfo
- (instancetype)init
{
    self = [super init];
    if (self) {
        self.fontSize = 15;
    }
    return self;
}
- (NSDictionary *)resultDict
{
    NSMutableDictionary *dict = [NSMutableDictionary dictionaryWithDictionary:[super resultDict]];
    [dict setObject:@(self.fontSize) forKey:@"fontSize"];
    return dict;
}
@end
