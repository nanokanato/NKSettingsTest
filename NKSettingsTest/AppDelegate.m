//
//  AppDelegate.m
//  NKSettingsTest
//
//  Created by nanoka____ on 2015/07/07.
//  Copyright (c) 2015年 nanoka____. All rights reserved.
//

#import "AppDelegate.h"
#import "NKViewController.h"

/*========================================================
 ; AppDelegate
 ========================================================*/
@implementation AppDelegate

/*--------------------------------------------------------
 ; dealloc : 解放
 ;      in :
 ;     out :
 --------------------------------------------------------*/
-(void)dealloc
{
    self.window = nil;
}

/*--------------------------------------------------------
 ; didFinishLaunchingWithOptions : アプリ起動時に呼び出される
 ;                            in : UIApplication * application
 ;                               : NSDictionary *launchOptions
 ;                           out : BOOL YES
 --------------------------------------------------------*/
-(BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    // Override point for customization after application launch.
    //Windowの生成
    self.window = [[UIWindow alloc] initWithFrame:[UIScreen mainScreen].bounds];
    NKViewController *oNKViewController = [[NKViewController alloc] init];
    self.window.rootViewController = oNKViewController;
    oNKViewController = nil;
    [self.window makeKeyAndVisible];
    return YES;
}

@end
