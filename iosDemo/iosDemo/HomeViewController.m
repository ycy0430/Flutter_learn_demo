//
//  ViewController.m
//  iosDemo
//
//  Created by Cany on 2022/4/25.
//

#import "HomeViewController.h"
#import <Flutter/Flutter.h>
#import "AppDelegate.h"

@interface HomeViewController ()

@property (strong , nonatomic) UIButton *button;
@property (strong , nonatomic) UIButton *button1;
@property (strong , nonatomic) UIButton *button2;


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
    self.navigationController.navigationBar.hidden = YES;
    self.navigationController.navigationBar.backgroundColor = [UIColor redColor];
    CGFloat width = self.view.frame.size.width;
    self.button = [[UIButton alloc] initWithFrame:CGRectMake((width-200)/2, 100, 200, 50 )];
    [self.button setTitle:@"跳转Test" forState:UIControlStateNormal];
    self.button.backgroundColor = [UIColor blueColor];
    [self.button addTarget:self action:@selector(jumpToFlutter) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:self.button];
    
    self.button1 = [[UIButton alloc] initWithFrame:CGRectMake((width-200)/2, 200, 200, 50 )];
    [self.button1 setTitle:@"隐式跳转home" forState:UIControlStateNormal];
    self.button1.backgroundColor = [UIColor blueColor];
    [self.button1 addTarget:self action:@selector(jumpToHomePage) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:self.button1];
    
    self.button2 = [[UIButton alloc] initWithFrame:CGRectMake((width-200)/2, 300, 200, 50 )];
    [self.button2 setTitle:@"复用引擎跳转home" forState:UIControlStateNormal];
    self.button2.backgroundColor = [UIColor blueColor];
    [self.button2 addTarget:self action:@selector(jumpToHomePage1) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:self.button2];

}

- (void)jumpToHomePage{
    //隐式创建FlutterViewController，会在进入时初始化FlutterEngine，导致进入白屏,并且pop时内存不会释放
    FlutterViewController* flutterViewController =[[FlutterViewController alloc] initWithProject:nil initialRoute:@"/home" nibName:nil bundle:nil];
    [self.navigationController pushViewController:flutterViewController animated:YES];
}

- (void)jumpToHomePage1{
    //复用预热引擎
    FlutterEngine *flutterHomeEngine =
        ((AppDelegate *)UIApplication.sharedApplication.delegate).flutterHomeEngine;
    FlutterViewController *flutterViewController =
        [[FlutterViewController alloc] initWithEngine:flutterHomeEngine nibName:nil bundle:nil];
    [self.navigationController pushViewController:flutterViewController animated:YES];
}


- (void)jumpToFlutter{
    //使用预热引擎创建FlutterViewController，不会白屏
    FlutterEngine *flutterEngine =
        ((AppDelegate *)UIApplication.sharedApplication.delegate).flutterEngine;
    FlutterViewController *flutterViewController =
        [[FlutterViewController alloc] initWithEngine:flutterEngine nibName:nil bundle:nil];

    [self.navigationController pushViewController:flutterViewController animated:YES];
}


@end
