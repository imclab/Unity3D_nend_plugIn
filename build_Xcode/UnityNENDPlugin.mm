//
//  UnityAdmobPlugin.m
//  Unity-iPhone
//
//  Created by hide on 11/11/28.
//  Copyright 2011 しまなみイー工房. All rights reserved.
//
#import "UnityNENDPlugin.h"

extern "C" void initNEND_(){
    _viewController = [[NENDUIViewController alloc]init];
    _viewController.view = [[UIView alloc]initWithFrame:CGRectMake(0, 0, 640, 960)];

    //(2)インスタンスの生成
    nadView = [[NADView alloc] initWithFrame:
               CGRectMake(0, 0, NAD_ADVIEW_SIZE_320x50.width, NAD_ADVIEW_SIZE_320x50.height)];
    
    //apiKey,広告枠IDのセット
    [nadView setNendID:@"a6eca9dd074372c898dd1df549301f277c53f2b9" spotID:@"3172"];
    
    //(3)デリゲートの指定
    [nadView setDelegate:_viewController];
    
    //(4)RootViewControllerの指定
    nadView.rootViewController = _viewController;
    
    baseView = _viewController.view;

    [[[UIApplication sharedApplication] keyWindow] addSubview:baseView];
    
     //(5)広告のロード
    [nadView load:nil];
    
    [baseView addSubview:nadView];
    [[[UIApplication sharedApplication] keyWindow] bringSubviewToFront:_viewController.view];
}
    
@implementation UnityNENDPlugin
@end
