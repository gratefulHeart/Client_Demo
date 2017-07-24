//
//  AppDelegate.h
//  Demo
//
//  Created by gfy on 2017/7/15.
//  Copyright © 2017年 gfy. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <HyphenateLite/HyphenateLite.h>
#import <EaseUILite/EaseUI.h>
@interface AppDelegate : UIResponder <UIApplicationDelegate,EMChatManagerDelegate>
{
    EMConnectionState _connectionState;
}

@property (strong, nonatomic) UIWindow *window;


@end

