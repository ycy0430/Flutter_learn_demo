//
//  ViewController.m
//  iosDemo
//
//  Created by Cany on 2022/4/25.
//

#import "HomeViewController.h"

@interface HomeViewController ()

@property (strong , nonatomic) UIButton *button;

@end

@implementation HomeViewController

- (void)viewDidLoad {
    [self configUI];
    [super viewDidLoad];
}

- (void)configUI{
    self.view.backgroundColor = [UIColor whiteColor];
    self.automaticallyAdjustsScrollViewInsets = NO;
    self.navigationItem.title = @"iOSNative";
    self.navigationController.navigationBar.backgroundColor = [UIColor redColor];
    CGFloat width = self.view.frame.size.width;
    self.button = [[UIButton alloc] initWithFrame:CGRectMake((width-100)/2, 100, 100, 50 )];
    [self.button setTitle:@"跳转Flutter" forState:UIControlStateNormal];
    self.button.backgroundColor = [UIColor blueColor];
    [self.button addTarget:self action:@selector(jumpToFlutter) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:self.button];

}

- (void)jumpToFlutter{
    NSLog(@"YCY--%@",@"aaa");
}


@end
