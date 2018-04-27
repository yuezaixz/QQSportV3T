//  weibo: http://weibo.com/xiaoqing28
//  blog:  http://www.alonemonkey.com
//
//  TXVideoPod.m
//  TXVideoPod
//
//  Created by 罗飞 on 12/08/2017.
//  Copyright (c) 2017 cdone. All rights reserved.
//

#import "TXVideoPod.h"
#import "CaptainHook.h"
#import <UIKit/UIKit.h>
#import "QQSportHeader.h"

CHDeclareClass(TADPlayerView);

//CHOptimizedMethod(0, self, void, TADPlayerView, play)
//{
//    CHSuper(0, TADPlayerView, play);
//    [self performSelector:@selector(skipCurrentVideo) withObject:nil afterDelay:0.3];
//    [self performSelector:@selector(skipCurrentVideo) withObject:nil afterDelay:0.6];
//    [self performSelector:@selector(skipCurrentVideo) withObject:nil afterDelay:0.9];
//    [self performSelector:@selector(skipCurrentVideo) withObject:nil afterDelay:1.2];
//}

CHOptimizedMethod1(self, void, TADPlayerView, setVideoUrls, id, object){

    CHSuper1(TADPlayerView, setVideoUrls, @[]);
}

//CHOptimizedMethod1(self, void, KKAdsViewController, containerLandingViewDidPresent, UIView *, view){
//    if ([WeChatSaveData defaultSaveData].isNeedAddMenu) {
//        // 方案一
//        [self addButtonWithTitle:@""]; // 填坑
//        [self addButtonWithTitle:kScreenshotTitle];
//        [self addButtonWithTitle:kScreenshotTitleMask];
//        
//        // 方案二
//        WCActionSheetItem *shotItem = [[objc_getClass("WCActionSheetItem") alloc] initWithTitle:kScreenshotTitle];
//        WCActionSheetItem *shotItem2 = [[objc_getClass("WCActionSheetItem") alloc] initWithTitle:kScreenshotTitleMask];
//        [self.buttonTitleList addObject:shotItem];
//        [self.buttonTitleList addObject:shotItem2];
//    }
//    CHSuper1(WCActionSheet, showInView, view);
//}

CHConstructor{
    CHLoadLateClass(TADPlayerView);
//    CHClassHook(0, TADPlayerView, play);
    CHClassHook1(TADPlayerView, setVideoUrls);
}
