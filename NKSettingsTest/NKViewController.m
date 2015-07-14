//
//  NKViewController.m
//  NKSettingsTest
//
//  Created by nanoka____ on 2015/07/07.
//  Copyright (c) 2015年 nanoka____. All rights reserved.
//

#import "NKViewController.h"

/*========================================================
 ; NKViewController
 ========================================================*/
@implementation NKViewController

/*--------------------------------------------------------
 ; dealloc : 解放
 ;      in :
 ;     out :
 --------------------------------------------------------*/
-(void)dealloc
{
    
}

/*--------------------------------------------------------
 ; viewWillAppear : Viewが表示される直前
 ;             in : (BOOL)animated
 ;            out :
 --------------------------------------------------------*/
-(void)viewWillAppear:(BOOL)animated
{
    //0.5秒後にshowSettingsAlertViewControllerメソッドを呼ぶ
    [self performSelector:@selector(showSettingsAlertViewController) withObject:nil afterDelay:0.5];
}

/*--------------------------------------------------------
 ; viewDidLoad : 初回Viewが読み込まれた時
 ;          in :
 ;         out :
 --------------------------------------------------------*/
-(void)viewDidLoad
{
    [super viewDidLoad];
    //画面の背景色を白にする
    self.view.backgroundColor = [UIColor whiteColor];
}

/*--------------------------------------------------------
 ; showSettingsAlertViewController : 設定画面へ遷移させるアラートを表示
 ;                              in :
 ;                             out :
 --------------------------------------------------------*/
-(void)showSettingsAlertViewController
{
    //設定画面へ遷移させるアラートを表示
    UIAlertController *alert = [UIAlertController alertControllerWithTitle:[NSString stringWithFormat:@"%@さん",(![[NSUserDefaults standardUserDefaults] objectForKey:@"SettingsRootTextFieldUserName"] || ![[[NSUserDefaults standardUserDefaults] objectForKey:@"SettingsRootTextFieldUserName"] isEqual:@""]) ? [[NSUserDefaults standardUserDefaults] objectForKey:@"SettingsRootTextFieldUserName"] : @"ゲスト"]
                                                                   message:@"端末の設定にアプリ固有の設定画面があります。"
                                                            preferredStyle:UIAlertControllerStyleAlert];
    [alert addAction:[UIAlertAction actionWithTitle:@"設定画面へ"
                                              style:UIAlertActionStyleDefault
                                            handler:^(UIAlertAction *action){
                                                [[UIApplication sharedApplication] openURL:[NSURL URLWithString:UIApplicationOpenSettingsURLString]];
                                            }
                      ]
     ];
    [self presentViewController:alert animated:YES completion:nil];
}

@end
