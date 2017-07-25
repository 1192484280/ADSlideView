//
//  ViewController.m
//  Demo
//
//  Created by zhangming on 17/7/25.
//  Copyright © 2017年 youjiesi. All rights reserved.
//

#import "ViewController.h"
#import "SDCycleScrollView.h"

@interface ViewController ()<SDCycleScrollViewDelegate>

@property (copy, nonatomic) NSArray *ImgArr;

@end

@implementation ViewController

- (NSArray *)ImgArr{
    
    if (!_ImgArr) {
        
        _ImgArr = @[@"http://static.damai.cn/mapi/2017/07/10/8d357780-4397-47ae-8e35-c0a864087f01.jpg",@"http://static.damai.cn/mapi/2017-07-04/23fff54f-72c1-4af7-9260-c0a2750e8f8e.jpg",@"http://static.damai.cn/mapi/2017-06-26/17cf714a-df89-42f9-a31c-f1d51418eec8.jpg",@"http://static.damai.cn/mapi/2017-05-12/c182ffb9-3af8-4182-b1bf-018b7fc9e8b6.jpg",@"http://static.damai.cn/mapi/2017-06-26/19b67a4b-2483-4fc0-8221-04c07aa685c0.jpg",@"http://static.damai.cn/mapi/2017-07-03/a2534e9e-b108-40b3-a5ab-754870c30233.jpg"];
    }
    
    return _ImgArr;
}
- (void)viewDidLoad {
    
    [super viewDidLoad];
    
    SDCycleScrollView *sdView = [SDCycleScrollView cycleScrollViewWithFrame:CGRectMake(0, 64, self.view.frame.size.width, 250) delegate:self placeholderImage:[UIImage imageNamed:@"bg_banner_placeholder"]];
    
    sdView.pageControlStyle = SDCycleScrollViewPageContolStyleAnimated;
    
    sdView.autoScrollTimeInterval = 4.0f;
    sdView.imageURLStringsGroup = self.ImgArr;
    
    [self.view addSubview:sdView];
}


/** 点击图片回调 */
- (void)cycleScrollView:(SDCycleScrollView *)cycleScrollView didSelectItemAtIndex:(NSInteger)index
{
    NSLog(@"%ld",(long)index);
}




- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
