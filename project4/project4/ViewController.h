//
//  ViewController.h
//  project4
//
//  Created by Devona Ward on 1/30/13.
//  Copyright (c) 2013 Devona Ward. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController 

{
    UILabel *userName;
    UITextField *textField;
    UILabel *userField;
    UIButton *loginBtn;
    UIButton *showDate;
    UIButton *infoMe;
    UILabel *info;
}
-(void)onClick:(UIButton*)button;
@end

