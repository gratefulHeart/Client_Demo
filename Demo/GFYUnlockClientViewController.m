//
//  GFYUnlockClientViewController.m
//  Demo
//
//  Created by gfy on 2017/7/15.
//  Copyright © 2017年 gfy. All rights reserved.
//

#import "GFYUnlockClientViewController.h"

@interface GFYUnlockClientViewController ()

@property (weak, nonatomic) IBOutlet UIView *telBackView;
@property (weak, nonatomic) IBOutlet UIView *clientBackView;
@property (weak, nonatomic) IBOutlet UITextField *telTextField;
@property (weak, nonatomic) IBOutlet UILabel *clientTypeLabel;

@property (weak, nonatomic) IBOutlet UIView *selectClientTypeBackView;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *selectClientTypeBackViewHeightLayout;
- (IBAction)selectClientTypeAction:(id)sender;
- (IBAction)unlockClientAction:(id)sender;

@end

@implementation GFYUnlockClientViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self modifyBackViewSet];
  
}

- (void)modifyBackViewSet{
    self.telBackView.layer.borderColor = [UIColor colorWithRed:153/255.0 green:153/255.0 blue:153/255.0 alpha:1.0].CGColor;
    self.telBackView.layer.borderWidth = .5f;
    
    self.clientBackView.layer.borderColor = [UIColor colorWithRed:153/255.0 green:153/255.0 blue:153/255.0 alpha:1.0].CGColor;
    self.clientBackView.layer.borderWidth = .5f;
    
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {

    [self foldSelectClientBackView];
    [self.telTextField resignFirstResponder];
    
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

- (IBAction)selectClientTypeAction:(id)sender {
    [self unFoldSelectClientBackView];
    
}
//解锁客户
- (IBAction)unlockClientAction:(id)sender {
}
//展开
- (void)unFoldSelectClientBackView {
    
    self.selectClientTypeBackViewHeightLayout.constant = 85;
    [UIView animateWithDuration:0.3 animations:^{
        [self.view layoutIfNeeded];
    }];
}
//折叠
- (void)foldSelectClientBackView {
    self.selectClientTypeBackViewHeightLayout.constant = 0;
    [UIView animateWithDuration:0.3 animations:^{
        [self.view layoutIfNeeded];
    }];
}



@end
