//
//  FirstViewController.m
//  NendSDKTestTabBase
//
//  Created by ユウゲンガイシャ クレエ on 11/07/25.
//  Modify by F@N Communications, Inc. on 12/09/20.
//  
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "FirstViewController.h"

@interface FirstViewController()
@property (nonatomic,retain) NADView *nadView;
@property (nonatomic) BOOL isVisibleNadView;
@end

@implementation FirstViewController

@synthesize nadView = nadView_;
@synthesize isVisibleNadView = isVisibleNadView_;

// 画面遷移が発生するような構造で
// 各controllerごとにNADViewインスタンスを生成する場合には
// pause / resume メッセージを送信し
// 広告の定期取得ローテーションを 一時中断 / 再開 してください

// 画面表示時に定期ロードを再開します
-(void)viewWillAppear:(BOOL)animated
{
    NSLog(@"FirstView nadView resume");
    [self.nadView resume];
}

// 画面が隠れたら定期ロードを中断します
-(void)viewWillDisappear:(BOOL)animated
{
    NSLog(@"FirstView nadView pause");
    [self.nadView pause];
}

//画面読み込み時
- (void)viewDidLoad
{
    // 画面外位置で作成
    [self setIsVisibleNadView:NO];
    CGRect rect = CGRectMake(0,
            self.view.frame.size.height - self.tabBarController.tabBar.frame.size.height,
            NAD_ADVIEW_SIZE_320x50.width,
            NAD_ADVIEW_SIZE_320x50.height);

    if (!self.nadView) {
        self.nadView = [[NADView alloc] initWithFrame:rect];
    }
    self.nadView.frame = rect;

    // set apiKey spotID.
    [self.nadView setNendID:@"a6eca9dd074372c898dd1df549301f277c53f2b9" spotID:@"3172"];
    [self.nadView setRootViewController:self.tabBarController];
    [self.nadView setDelegate:self];

    [self.nadView load];
//    [self.nadView load:[NSDictionary dictionaryWithObjectsAndKeys:@"180",@"retry",nil]];

    // 画面外に位置したままViewを追加
    [self.view addSubview:self.nadView];

    [super viewDidLoad];
}

#pragma mark - NADView delegate

// NADViewのロードが成功した時に呼ばれる
- (void)nadViewDidFinishLoad:(NADView *)adView
{
    NSLog(@"FirstView delegate nadViewDidFinishLoad:");
}

// 広告受信成功
-(void)nadViewDidReceiveAd:(NADView *)adView
{
    NSLog(@"FirstView delegate nadViewDidReceiveAd:");

    // 画面内にフェードインさせる例
    if (self.isVisibleNadView){
        adView.center = CGPointMake(adView.center.x, adView.center.y+self.tabBarController.tabBar.frame.size.height);
    }
    [UIView animateWithDuration:1.0f
                     animations:^{
                         adView.center = CGPointMake(adView.center.x, adView.center.y-self.tabBarController.tabBar.frame.size.height);
                     }];
    [self setIsVisibleNadView:YES];
}

// 広告受信エラー
-(void)nadViewDidFailToReceiveAd:(NADView *)adView
{
    NSLog(@"FirstView delegate nadViewDidFailToReceiveAd:");

    // 画面外へフェードアウトさせる例
    if (self.isVisibleNadView){
        [UIView animateWithDuration:1.0f
                         animations:^{
                             adView.center = CGPointMake(adView.center.x, adView.center.y+self.tabBarController.tabBar.frame.size.height);
                         }];
        [self setIsVisibleNadView:NO];
    }
}


#pragma mark -

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}


- (void)didReceiveMemoryWarning
{
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    // Release any cached data, images, etc. that aren't in use.
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (void)dealloc
{
    // delegateにnilをセットしてリリース
    [self.nadView setDelegate:nil];
    [self.nadView release];
    self.nadView =nil;

    [super dealloc];
}

@end
