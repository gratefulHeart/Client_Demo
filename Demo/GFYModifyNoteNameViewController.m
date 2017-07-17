//
//  GFYModifyNoteNameViewController.m
//  Demo
//
//  Created by gfy on 2017/7/15.
//  Copyright © 2017年 gfy. All rights reserved.
//

#import "GFYModifyNoteNameViewController.h"

@interface GFYModifyNoteNameViewController ()<UITextFieldDelegate>

@end

@implementation GFYModifyNoteNameViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}



#pragma mark UITextFieldDelegate
- (BOOL)textFieldShouldReturn:(UITextField *)textField              // called when 'return' key pressed. return NO to ignore.
{

    [self finishSaveNoteName];
    return YES;
}


- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {

    [self.noteNameTextField resignFirstResponder];
    
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

- (IBAction)saveNoteName:(id)sender {
    [self finishSaveNoteName];
}
//点击完成去保存修改的备注
- (void)finishSaveNoteName {

    if ([self.noteNameTextField.text length]<=0) {
        NSLog(@"请输入备注名再保存！");
        return;
    }
    /*
     执行保存备注名操作
     */
    
    
}
@end
