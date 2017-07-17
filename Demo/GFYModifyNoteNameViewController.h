//
//  GFYModifyNoteNameViewController.h
//  Demo
//
//  Created by gfy on 2017/7/15.
//  Copyright © 2017年 gfy. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface GFYModifyNoteNameViewController : UIViewController

@property (weak, nonatomic) IBOutlet UITextField *noteNameTextField;

- (IBAction)saveNoteName:(id)sender;

@end
