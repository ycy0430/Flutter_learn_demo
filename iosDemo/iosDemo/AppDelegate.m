//
//  AppDelegate.m
//  iosDemo
//
//  Created by Cany on 2022/4/25.
//

#import "AppDelegate.h"
#import "HomeViewController.h"
// Used to connect plugins (only if you have plugins with iOS platform code).
#import <FlutterPluginRegistrant/GeneratedPluginRegistrant.h>
@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    //初始Flutter引擎
    self.flutterEngine = [[FlutterEngine alloc] initWithName:@"my flutter engine"];
    self.flutterHomeEngine = [[FlutterEngine alloc] initWithName:@"my flutter home engine"];
    
    //修改默认启动页
    [self.flutterEngine runWithEntrypoint:@"main"
                        initialRoute:@"/test"];
    [self.flutterHomeEngine runWithEntrypoint:@"main"
                        initialRoute:@"/home"];
    
    // 运行Dart 中的main方法

    [self.flutterEngine run];
    [self.flutterHomeEngine run];
    // 集成iOS端插件
    [GeneratedPluginRegistrant registerWithRegistry:self.flutterEngine];
    
    //初始主界面
    self.window = [[UIWindow alloc] initWithFrame:[UIScreen mainScreen].bounds];
    HomeViewController *vc = [[HomeViewController alloc] init];
    UINavigationController *nav = [[UINavigationController alloc] initWithRootViewController:vc];
    self.window.rootViewController = nav;
    [self.window makeKeyAndVisible];
    return YES;
}


@end
