//
//  ConversationListController.m
//  Demo
//
//  Created by Lilichao on 2017/7/24.
//  Copyright © 2017年 gfy. All rights reserved.
//

#import "ConversationListController.h"
#import "ChatViewController.h"

@interface ConversationListController ()<EaseConversationListViewControllerDelegate>

@end

@implementation ConversationListController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.showRefreshHeader = YES;
//    self.delegate = self;
//    self.dataSource = self;
    
    //首次进入加载数据
    [self tableViewDidTriggerHeaderRefresh];
    
}
#pragma mark - EaseConversationListViewControllerDelegate

- (void)conversationListViewController:(EaseConversationListViewController *)conversationListViewController
            didSelectConversationModel:(id<IConversationModel>)conversationModel
{
    if (conversationModel) {
        EMConversation *conversation = conversationModel.conversation;
        if (conversation) {
            UIViewController *chatController = nil;
            chatController = [[ChatViewController alloc] initWithConversationChatter:conversation.conversationId conversationType:conversation.type];
            chatController.title = conversationModel.title;
            [self.navigationController pushViewController:chatController animated:YES];
        }
        [[NSNotificationCenter defaultCenter] postNotificationName:@"setupUnreadMessageCount" object:nil];
        [self.tableView reloadData];
    }
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
