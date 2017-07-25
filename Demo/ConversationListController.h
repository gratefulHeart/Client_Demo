//
//  ConversationListController.h
//  Demo
//
//  Created by Lilichao on 2017/7/24.
//  Copyright © 2017年 gfy. All rights reserved.
//

#import <EaseUILite/EaseUI.h>

@interface ConversationListController : EaseConversationListViewController

- (void)refresh;
- (void)refreshDataSource;

- (void)isConnect:(BOOL)isConnect;
- (void)networkChanged:(EMConnectionState)connectionState;

@end
