%hook ViewController

- (void)changeBackgroundColor {
 	[_readButton setBackgroundColor:[UIColor redColor]];
    UIAlertController *alerView = [UIAlertController alertControllerWithTitle:@"提示"
                                                                      message:@"已经被HOOK"
                                                               preferredStyle:UIAlertControllerStyleAlert];
    UIAlertAction *cancelAction =[UIAlertAction actionWithTitle:@"取消"
                                                          style:UIAlertActionStyleCancel
                                                        handler:nil];
    [alerView addAction:cancelAction];
    [self presentViewController:alerView animated:YES completion:nil];    
}

%end
