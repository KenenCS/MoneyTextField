//
//  CSMoneyTextField.m
//  MoneyTextField
//
//  Created by kenen on 2017/3/20.
//  Copyright © 2017年 kenen. All rights reserved.
//

#import "CSMoneyTextField.h"

@interface CSMoneyTextField ()
@property (nonatomic, strong) CSMoneyTFLimit *limit;
@end

@implementation CSMoneyTextField

- (instancetype)initWithFrame:(CGRect)frame{
    if (self = [super initWithFrame:frame]) {
        self.delegate = self.limit;
        [self addTarget:self.limit
                 action:@selector(valueChange:)
       forControlEvents:UIControlEventEditingChanged];
    }
    return self;
}

// 禁止 粘贴、剪切、选择、选择全部
- (BOOL)canPerformAction:(SEL)action withSender:(id)sender{
    
    //禁止粘贴
    if (action == @selector(paste:)){
        return NO;
    }
    if (action == @selector(cut:)) {
        return NO;
    }
    if (action == @selector(copy:)) {
        return NO;
    }
    if (action == @selector(select:)) {
        return NO;
    }
    if (action == @selector(selectAll:)) {
        return NO;
    }
    
    return [super canPerformAction:action withSender:sender];
}

#pragma mark - Getter
- (CSMoneyTFLimit *)limit{
    if (!_limit) {
        _limit = [[CSMoneyTFLimit alloc] init];
    }
    return _limit;
}


/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
