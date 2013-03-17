//
//  SecondViewController.m
//  NendSDKTestTabBase
//
//  Created by ユウゲンガイシャ クレエ on 11/07/25.
//  Modify by F@N Communications, Inc. on 12/09/20.
//  
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "SecondViewController.h"

@interface SecondViewController()
@property (nonatomic,retain) NADView *nadView;
@end

@implementation SecondViewController

@synthesize nadView = nadView_;

// 画面遷移が発生するような構造で
// 各controllerごとにNADViewインスタンスを生成する場合には
// pause / resume メッセージを送信し
// 広告の定期取得ローテーションを 一時中断 / 再開 してください

// 画面表示時に定期ロードを再開します
-(void)viewWillAppear:(BOOL)animated
{
    NSLog(@"SecondView nadView resume");
    [self.nadView resume];

}

// 画面が隠れたら定期ロードを中断します
-(void)viewWillDisappear:(BOOL)animated
{
    NSLog(@"SecondView nadView pause");
    [self.nadView pause];
}


// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad
{
    CGRect rect = CGRectMake(0, 0, NAD_ADVIEW_SIZE_320x50.width, NAD_ADVIEW_SIZE_320x50.height);
    
    if (!self.nadView) {
        self.nadView = [[NADView alloc] initWithFrame:rect];
    }
    
    [self.nadView setNendID:@"a6eca9dd074372c898dd1df549301f277c53f2b9" spotID:@"3172"];
    
    [self.nadView setRootViewController:self.tabBarController];
    [self.nadView setDelegate:self];

    [self.nadView load];

    [super viewDidLoad];
}

#pragma mark - NADView delegate

// NADViewのロードが成功した時に呼ばれる
- (void)nadViewDidFinishLoad:(NADView *)adView
{
    NSLog(@"SecondView delegate nadViewDidFinishLoad:");
    [self.view addSubview:self.nadView];
}

// 広告受信成功
-(void)nadViewDidReceiveAd:(NADView *)adView
{
    NSLog(@"SecondView delegate nadViewDidReceiveAd:");
}

// 広告受信エラー
-(void)nadViewDidFailToReceiveAd:(NADView *)adView
{
    NSLog(@"SecondView delegate nadViewDidFailToLoad:");
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
    // delegateにnilをセットしてrelease
    [self.nadView setDelegate:nil];
    [self.nadView release];
    self.nadView = nil;

    [super dealloc];
}

@end
