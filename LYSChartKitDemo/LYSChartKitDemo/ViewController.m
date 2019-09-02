//
//  ViewController.m
//  LYSChartKitDemo
//
//  Created by HENAN on 2019/8/27.
//  Copyright © 2019 HENAN. All rights reserved.
//

#import "ViewController.h"
#import "LYSLineChartView.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    LYSLineChartView *view = [[LYSLineChartView alloc] initWithFrame:CGRectMake(0, 50, CGRectGetWidth(self.view.frame), 200)];
    [self.view addSubview:view];
    
}


@end
