
//
//  RootViewController.m
//  汤姆猫
//
//  Created by lanou3g on 15/8/11.
//  Copyright (c) 2015年 zhangpeipei. All rights reserved.
//

#import "RootViewController.h"

@interface RootViewController ()

@end

@implementation RootViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    imageV = [[UIImageView alloc] initWithFrame:self.view.frame];
    UIImage *image = [UIImage imageNamed:@"drink_0.jpg"];
    imageV.image = image;
    //默认用户交互事件关闭状态
    //开启交互事件
    imageV.userInteractionEnabled = YES;
    
    [self.view addSubview:imageV];
    
    //添加喝牛奶的按钮
    UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
    button.frame = CGRectMake(15, self.view.frame.size.height- 180, 60, 60);
    [button setImage:[UIImage imageNamed:@"drink"] forState:UIControlStateNormal];
    [self.view addSubview:button];
    [button addTarget:self action:@selector(Drink) forControlEvents:UIControlEventTouchUpInside];
    
    //添加戳肚子按钮
    UIButton *button1 = [UIButton buttonWithType:UIButtonTypeCustom];
    button1.frame = CGRectMake(self.view.frame.size.width - 220, self.view.frame.size.height - 160, 80, 90);
    [self.view addSubview:button1];
    [button1 addTarget:self action:@selector(touchStomach) forControlEvents:UIControlEventTouchUpInside];
    
    //添加玩耍按钮
    UIButton *button2 = [UIButton buttonWithType:UIButtonTypeCustom];
    button2.frame = CGRectMake(15, self.view.frame.size.height - 240, 60, 60);
    [button2 setImage:[UIImage imageNamed:@"cymbal"] forState:UIControlStateNormal];
    [self.view addSubview:button2];
    [button2 addTarget:self action:@selector(Cymbal) forControlEvents:UIControlEventTouchUpInside];
    
    //添加磨爪爪按钮
    UIButton *button3 = [UIButton buttonWithType:UIButtonTypeCustom];
    button3.frame = CGRectMake(15, self.view.frame.size.height - 120, 60, 60);
    [button3 setImage:[UIImage imageNamed:@"scratch"] forState:UIControlStateNormal];
    [self.view addSubview:button3];
    [button3 addTarget:self action:@selector(scratch) forControlEvents:UIControlEventTouchUpInside];
    
    //添加eat按钮
    UIButton *button4 = [UIButton buttonWithType:UIButtonTypeCustom];
    button4.frame = CGRectMake(self.view.frame.size.width - 75, self.view.frame.size.height - 180, 60, 60);
    [button4 setImage:[UIImage imageNamed:@"eat"] forState:UIControlStateNormal];
    [self.view addSubview:button4];
    [button4 addTarget:self action:@selector(eat) forControlEvents:UIControlEventTouchUpInside];
    
    //添加fart按钮
    UIButton *button5 = [UIButton buttonWithType:UIButtonTypeCustom];
    button5.frame = CGRectMake(self.view.frame.size.width - 75, self.view.frame.size.height - 120, 60, 60);
    [button5 setImage:[UIImage imageNamed:@"fart"] forState:UIControlStateNormal];
    [self.view addSubview:button5];
    [button5 addTarget:self action:@selector(fart) forControlEvents:UIControlEventTouchUpInside];

    //添加pie按钮
    UIButton *button6 = [UIButton buttonWithType:UIButtonTypeCustom];
    button6.frame = CGRectMake(self.view.frame.size.width - 75, self.view.frame.size.height - 240, 60, 60);
    [button6 setImage:[UIImage imageNamed:@"pie"] forState:UIControlStateNormal];
    [self.view addSubview:button6];
    [button6 addTarget:self action:@selector(pie) forControlEvents:UIControlEventTouchUpInside];
    
    //添加Angry按钮
    UIButton *button7 = [UIButton buttonWithType:UIButtonTypeCustom];
    button7.frame = CGRectMake(self.view.frame.size.width - 120, self.view.frame.size.height - 130, 30, 60);
    [button7 addTarget:self action:@selector(angry) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button7];
    
    //打鼻子按钮
    UIButton *button8 = [UIButton buttonWithType:UIButtonTypeCustom];
    button8.frame = CGRectMake(self.view.frame.size.width - 220, self.view.frame.size.height- 480, 60, 60);
    [button8 addTarget:self action:@selector(knockOut) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button8];
    
    //右脚按钮
    UIButton *button9 = [UIButton buttonWithType:UIButtonTypeCustom];
    button9.frame = CGRectMake(self.view.frame.size.width - 240, self.view.frame.size.height - 60, 40, 30);
    [button9 addTarget:self action:@selector(footLeft) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button9];
  
    
    //左脚按钮
    UIButton *button10 = [UIButton buttonWithType:UIButtonTypeCustom];
    button10.frame = CGRectMake(self.view.frame.size.width - 180, self.view.frame.size.height - 60, 40, 30);
    [button10 addTarget:self action:@selector(footRight) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button10];
    
    
    
    
    
    
    //创建一个进度条
    UISlider *slide = [[UISlider alloc] initWithFrame:CGRectMake(10, self.view.frame.size.height - 40, self.view.frame.size.width - 20, 30)];
    
    [self.view addSubview:slide];
    //设置最大最小值
    slide.maximumValue = 10.0;
    slide.minimumValue = 0.1;
    
    //设置最大最小值的颜色
    slide.maximumTrackTintColor = [UIColor orangeColor];
    slide.minimumTrackTintColor = [UIColor greenColor];
    
    [slide addTarget:self action:@selector(slideMe:) forControlEvents:UIControlEventValueChanged];
    
    
}

//玩耍
- (void)Cymbal
{
    NSMutableArray *array = [NSMutableArray array];
    for (int i = 0; i < 13; i++) {
        NSString *name = [NSString stringWithFormat:@"cymbal_%d.jpg", i];
        UIImage *image = [UIImage imageNamed:name];
        [array addObject:image];
    }
    
    imageV.animationDuration = 1;
    imageV.animationImages = array;
    imageV.animationRepeatCount = 1;
    [imageV startAnimating];
 
}

- (void)slideMe:(UISlider *)sl
{
//    NSLog(@"%f", sl.value);
    //根据控制条的值，改变动画的时间
    imageV.animationDuration = sl.value;
    [imageV startAnimating];
}




//喝牛奶
- (void)Drink
{
    //用来装图片的数组
    NSMutableArray *array = [NSMutableArray array];
    for (int i = 0; i < 81; i++) {
        NSString *name = [NSString stringWithFormat:@"drink_%d.jpg", i];
        UIImage *image = [UIImage imageNamed:name];
        [array addObject:image];
    }
    
    //对动画参数进行设置
    imageV.animationDuration = 4;
    imageV.animationImages = array;
    imageV.animationRepeatCount = 1;
    [imageV startAnimating];
    
    
}

//戳肚子
- (void)touchStomach
{
    NSMutableArray *array = [NSMutableArray array];
    for (int i = 0; i < 34; i++) {
        NSString *name = [NSString stringWithFormat:@"stomach_%d.jpg", i];
        UIImage *image = [UIImage imageNamed:name];
        [array addObject:image];
    }
    
    imageV.animationDuration = 4;
    imageV.animationImages = array;
    imageV.animationRepeatCount = 1;
    [imageV startAnimating];
}


//磨爪爪
- (void)scratch
{
    NSMutableArray *array = [NSMutableArray array];
    for (int i = 0; i < 56; i++) {
        NSString *name = [NSString stringWithFormat:@"scratch_%d.jpg", i];
        UIImage *image = [UIImage imageNamed:name];
        [array addObject:image];
    }
    
    imageV.animationDuration = 4;
    imageV.animationImages = array;
    imageV.animationRepeatCount = 1;
    [imageV startAnimating];
}


//吃东西
- (void)eat
{
    NSMutableArray *array = [NSMutableArray array];
    for (int i = 0; i < 40; i++) {
        NSString *name = [NSString stringWithFormat:@"eat_%d.jpg", i];
        UIImage *image = [UIImage imageNamed:name];
        [array addObject:image];
    }
    
    imageV.animationDuration = 4;
    imageV.animationImages = array;
    imageV.animationRepeatCount = 1;
    [imageV startAnimating];

}

//左顾右盼
- (void)fart
{
    NSMutableArray *array = [NSMutableArray array];
    for (int i = 0; i < 28; i++) {
        NSString *name = [NSString stringWithFormat:@"fart_%d.jpg", i];
        UIImage *image = [UIImage imageNamed:name];
        [array addObject:image];
    }
    
    imageV.animationDuration = 4;
    imageV.animationImages = array;
    imageV.animationRepeatCount = 1;
    [imageV startAnimating];

}

//扔派
- (void)pie
{
    NSMutableArray *array = [NSMutableArray array];
    for (int i = 0; i < 24; i++) {
        NSString *name = [NSString stringWithFormat:@"pie_%d.jpg", i];
        UIImage *image = [UIImage imageNamed:name];
        [array addObject:image];
    }
    
    imageV.animationDuration = 4;
    imageV.animationImages = array;
    imageV.animationRepeatCount = 1;
    [imageV startAnimating];

}

//生气
- (void)angry
{
    NSMutableArray *array = [NSMutableArray array];
    for (int i = 0; i < 26; i++) {
        NSString *name = [NSString stringWithFormat:@"angry_%d.jpg", i];
        UIImage *image = [UIImage imageNamed:name];
        [array addObject:image];
    }
    
    imageV.animationDuration = 4;
    imageV.animationImages = array;
    imageV.animationRepeatCount = 1;
    [imageV startAnimating];
}


//戳鼻子按钮
- (void)knockOut
{
    NSMutableArray *array = [NSMutableArray array];
    for (int i = 0; i < 81; i++) {
        NSString *name = [NSString stringWithFormat:@"knockout_%d.jpg", i];
        UIImage *image = [UIImage imageNamed:name];
        [array addObject:image];
    }
    
    imageV.animationDuration = 4;
    imageV.animationImages = array;
    imageV.animationRepeatCount = 1;
    [imageV startAnimating];
    
    
}

//右脚按钮
- (void)footLeft
{
    NSMutableArray *array = [NSMutableArray array];
    for (int i = 0; i < 30; i++) {
        NSString *name = [NSString stringWithFormat:@"footRight_%d.jpg", i];
        UIImage *image = [UIImage imageNamed:name];
        [array addObject:image];
    }
    imageV.animationDuration = 4;
    imageV.animationImages = array;
    imageV.animationRepeatCount = 1;
    [imageV startAnimating];
}



//左脚按钮
- (void)footRight
{
    NSMutableArray *array = [NSMutableArray array];
    for (int i = 0; i < 30; i++) {
        NSString *name = [NSString stringWithFormat:@"footLeft_%d.jpg", i];
        UIImage *image = [UIImage imageNamed:name];
        [array addObject:image];
    }
    imageV.animationDuration = 4;
    imageV.animationImages = array;
    imageV.animationRepeatCount = 1;
    [imageV startAnimating];
}





- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
