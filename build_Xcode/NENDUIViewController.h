//
//  NENDUIViewController.h
//  Unity-iPhone
//
//  Created by 住吉 英知 on 12/02/16.
//  Copyright (c) 2012 しまなみイー工房. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "NADView.h"

@interface NENDUIViewController : UIViewController<NADViewDelegate>{
}

-(void)nadViewDidFinishLoad:(NADView *)adView;
@end