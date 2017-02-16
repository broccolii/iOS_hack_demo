//
//  ViewController.m
//  ios_hack_demo
//
//  Created by Broccoli on 16/8/16.
//  Copyright © 2016年 youzan. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (strong, nonatomic) IBOutlet UIButton *readButton;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.readButton.layer.cornerRadius = 100;
    self.readButton.layer.masksToBounds = true;
}

- (IBAction)buttonClicked:(id)sender {
    [self changeBackgroundColor];
}

- (void)changeBackgroundColor {
    UIAlertController *alerView = [UIAlertController alertControllerWithTitle:@"提示"
                                                                      message:@"未被HOOK"
                                                               preferredStyle:UIAlertControllerStyleAlert];
    UIAlertAction *cancelAction =[UIAlertAction actionWithTitle:@"取消"
                                                          style:UIAlertActionStyleCancel
                                                        handler:nil];
    [alerView addAction:cancelAction];
    [self presentViewController:alerView animated:YES completion:nil];
}
@end
