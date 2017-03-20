//
//  ViewController.m
//  MoneyTextField
//
//  Created by kenen on 2017/3/20.
//  Copyright © 2017年 kenen. All rights reserved.
//

#import "ViewController.h"
#import "CSMoneyTextField.h"

@interface ViewController () <CSMoneyTFLimitDelegate>

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    CGRect frame = CGRectMake(30,100,[UIScreen mainScreen].bounds.size.width - 60,44);
    CSMoneyTextField *tf = [[CSMoneyTextField alloc] initWithFrame:frame];
    tf.borderStyle = UITextBorderStyleRoundedRect;
    tf.placeholder = @"请输入金额";
    tf.keyboardType = UIKeyboardTypeDecimalPad;
    tf.limit.delegate = self;
    tf.limit.max = @"99999.99";
    [self.view addSubview:tf];
    
}

#pragma mark -CSMoneyTFLimitDelegate
- (void)valueChange:(id)sender{
    
    if ([sender isKindOfClass:[CSMoneyTextField class]]) {
        
        CSMoneyTextField *tf = (CSMoneyTextField *)sender;
        NSLog(@"CSMoneyTextField ChangedValue: %@",tf.text);
    }
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
