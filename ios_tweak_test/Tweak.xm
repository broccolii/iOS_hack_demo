#import "ViewController.h"
%hook ViewController

- (void)changeBackgroundColor {
    UIAlertController *alerView = [UIAlertController alertControllerWithTitle:@"提示"
                                                                      message:@"已经被修改了"
                                                               preferredStyle:UIAlertControllerStyleAlert];
    UIAlertAction *cancelAction =[UIAlertAction actionWithTitle:@"取消"
                                                          style:UIAlertActionStyleCancel
                                                        handler:nil];
    [alerView addAction:cancelAction];
    [self presentViewController:alerView animated:YES completion:nil];  
}

%end
