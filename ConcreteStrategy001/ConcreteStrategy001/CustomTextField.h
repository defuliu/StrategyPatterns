//
//  CustomTextField.h
//  ConcreteStrategy001
//
//  Created by 刘德福 on 2018/3/27.
//  Copyright © 2018年 Dreams. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "InputTextFieldValidate.h"

@interface CustomTextField : UITextField

@property(nonatomic, strong)InputTextFieldValidate *inputValidate;
//验证方法
- (BOOL)validate;
@end
