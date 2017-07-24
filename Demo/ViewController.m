//
//  ViewController.m
//  Demo
//
//  Created by gfy on 2017/7/15.
//  Copyright © 2017年 gfy. All rights reserved.
//

#import "ViewController.h"
#import <HyphenateLite/HyphenateLite.h>
#import "ConversationListController.h"

@interface ViewController ()
- (IBAction)conversionListAction:(id)sender;
@property (weak, nonatomic) IBOutlet UIButton *conversionChatAction;
@property (weak, nonatomic) IBOutlet UIButton *contactListAction;
- (IBAction)loginAction:(id)sender;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)conversionListAction:(id)sender {
    ConversationListController *conversationListVC = [[ConversationListController alloc]init];
    [self.navigationController pushViewController:conversationListVC animated:YES];
    
}
- (IBAction)loginAction:(id)sender {
    NSString *username =  @"gfy";
    NSString *password = @"123456";
    
    
    [[EMClient sharedClient] loginWithUsername:username
                                      password:password
                                    completion:^(NSString *aUsername, EMError *aError) {
                                        if (!aError) {
                                            NSLog(@"登录成功");
                                            //设置是否自动登录
                                            [[EMClient sharedClient].options setIsAutoLogin:YES];
                                        } else {
                                            NSLog(@"登录失败");
                                        }
                                    }];
    
}
@end
