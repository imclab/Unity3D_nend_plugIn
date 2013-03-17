//
//  NendSDKTestARCViewController.m
//  NendSDKTestARC
//
//  Created by ADN on 12/06/07.
//  Copyright (c) 2012 F@N Communications, Inc. All rights reserved.
//

#import "NendSDKTestARCViewController.h"

NADView *nadView_;

@interface NendSDKTestARCViewController ()
@end

@implementation NendSDKTestARCViewController {
}

#pragma mark -

- (void)viewDidLoad
{
    [super viewDidLoad];

    // 画面下部に固定表示する一例

    // NADViewの作成
    CGRect rect = CGRectMake(0,
            self.view.frame.size.height - NAD_ADVIEW_SIZE_320x50.height,
            NAD_ADVIEW_SIZE_320x50.width,
            NAD_ADVIEW_SIZE_320x50.height);
    nadView_ = [[NADView alloc] initWithFrame:rect];

    // set apiKey, spotId.
    [nadView_ setNendID:@"a6eca9dd074372c898dd1df549301f277c53f2b9" spotID:@"3172"];

    // 初回の広告が表示されるまでの背景色をアプリの配色に合わせて任意指定できます (Default:clearColor)
    [nadView_ setBackgroundColor:[UIColor cyanColor]];

    [nadView_ setRootViewController:nil];
    [nadView_ setDelegate:self];

    [nadView_ load];

    [self.view addSubview:nadView_];
}


#pragma mark - NADView delegate

// NADViewのロードが成功した時に呼ばれる
- (void)nadViewDidFinishLoad:(NADView *)adView
{
    NSLog(@"delegate nadViewDidFinishLoad:");
}

// 広告受信成功
-(void)nadViewDidReceiveAd:(NADView *)adView
{
    NSLog(@"delegate nadViewDidReceiveAd:");
}

// 広告受信エラー
-(void)nadViewDidFailToReceiveAd:(NADView *)adView
{
    NSLog(@"delegate nadViewDidFailToLoad:");
}

#pragma mark - NADView control

// 画面遷移が発生するような構造で
// 各controllerごとにNADViewインスタンスを生成する場合には
// pause / resume メッセージを送信し
// 広告の定期受信のローテーションを 一時中断 / 再開 してください

//// 画面表示時に定期ロードを再開します
//-(void)viewWillAppear:(BOOL)animated
//{
//    NSLog(@"nadView resume");
//    [nadView_ resume];
//}
//
//// 画面が隠れたら定期ロードを中断します
//-(void)viewWillDisappear:(BOOL)animated
//{
//    NSLog(@"nadView pause");
//    [nadView_ pause];
//}

#pragma mark -

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

-(void)dealloc
{
    // pause & delegateにnilをセットしてリリース
    [nadView_ pause];
    [nadView_ setDelegate:nil];
    nadView_ = nil;
}

#pragma mark - 画面回転時処理

// 以下は画面回転を許可する場合のサンプルです

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // 画面回転をすべての方向で許可
    return YES;
}

- (void)willRotateToInterfaceOrientation:(UIInterfaceOrientation)toInterfaceOrientation duration:(NSTimeInterval)duration
{
    NSLog(@"willRotateToInterfaceOrientation: width %.1f / height %.1f" ,self.view.frame.size.width, self.view.frame.size.height);

    // 0,0以外の位置(画面下部等)に表示する場合は、向きによって位置を調整する
    if (toInterfaceOrientation == UIInterfaceOrientationLandscapeRight)  {
        NSLog(@"TO UIInterfaceOrientationLandscapeRight");
        nadView_.center = CGPointMake(nadView_.center.x, 300.0f - (NAD_ADVIEW_SIZE_320x50.height/2));
    } else if  (toInterfaceOrientation == UIInterfaceOrientationLandscapeLeft) {
        NSLog(@"TO UIInterfaceOrientationLandscapeLeft");
        nadView_.center = CGPointMake(nadView_.center.x, 300.0f - (NAD_ADVIEW_SIZE_320x50.height/2));
    } else if (toInterfaceOrientation == UIInterfaceOrientationPortrait){
        NSLog(@"TO UIInterfaceOrientationPortrait");
        nadView_.center = CGPointMake(nadView_.center.x, 460.0f - (NAD_ADVIEW_SIZE_320x50.height/2));
    } else if (toInterfaceOrientation == UIInterfaceOrientationPortraitUpsideDown){
        NSLog(@"TO UIInterfaceOrientationPortraitUpsideDown");
        nadView_.center = CGPointMake(nadView_.center.x, 460.0f - (NAD_ADVIEW_SIZE_320x50.height/2));
    }
}

@end
