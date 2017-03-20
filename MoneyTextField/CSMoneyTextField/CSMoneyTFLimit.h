//
//  CSMoneyTFLimit.h
//  MoneyTextField
//
//  Created by kenen on 2017/3/20.
//  Copyright © 2017年 kenen. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@protocol CSMoneyTFLimitDelegate;

@interface CSMoneyTFLimit : NSObject <UITextFieldDelegate>

@property (nonatomic, assign) id <CSMoneyTFLimitDelegate> delegate;
@property (nonatomic, strong) NSString *max; // 默认99999.99

- (void)valueChange:(id)sender;

@end

@protocol CSMoneyTFLimitDelegate <NSObject>

- (void)valueChange:(id)sender;

@end
