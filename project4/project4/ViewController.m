//
//  ViewController.m
//  project4
//
//  Created by Devona Ward on 1/30/13.
//  Copyright (c) 2013 Devona Ward. All rights reserved.
//

#import "ViewController.h"
#define btnDate 0
#define btnLogin 1
#define btnInfo 2
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    //Username
    userName = [[UILabel alloc] initWithFrame: CGRectMake(0.0f, 10.0f, 100.0f, 20.0f)];
    
    if (userName !=nil)
    {
        userName.text= @"Username: ";
        [self.view addSubview: userName];
    }
    
    //Username text field
    textField = [[UITextField alloc] initWithFrame:CGRectMake(90.0f, 10.0f, 200.0f, 30.0f)];
    if (textField !=nil)
    {
        textField.borderStyle = UITextBorderStyleRoundedRect;
        [self.view addSubview:textField];
    }
    
    //Login button
    loginBtn = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    if (loginBtn != nil)
    {
        loginBtn.frame = CGRectMake(220.0f, 50.0f, 70.0f, 25.0f);
        loginBtn.tintColor = [UIColor redColor];
        [loginBtn setTitle:@"Login" forState:UIControlStateNormal];
        //Tag button
        loginBtn.tag = 0;
        
        //Button target added
        [loginBtn addTarget:self action:@selector(onClick:) forControlEvents:UIControlEventTouchUpInside];
        
        [self.view addSubview:loginBtn];
        
    }
    
    //User field to display username
    userField = [[UILabel alloc] initWithFrame: CGRectMake(0.0f, 100.0f, 350.0f, 60.0f)];
    
    if (userField !=nil)
    {
        userField.backgroundColor = [UIColor blackColor];
        userField.textColor = [UIColor whiteColor];
        userField.textAlignment = NSTextAlignmentCenter;
        userField.text= @"Please Enter Username";
        [self.view addSubview: userField];
    }
    
    //Show date button
    showDate = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    if (showDate !=nil)
    {
        showDate.frame = CGRectMake(5.0f, 220.0f, 100.0f, 40.0f);
        showDate.tintColor = [UIColor redColor];
        [showDate setTitle:@"Show Date" forState:UIControlStateNormal];
        //Tag button
        loginBtn.tag = 1;
        
        //Button target added
        [showDate addTarget:self action:@selector(onClick:) forControlEvents:UIControlEventTouchUpInside];
        [self.view addSubview:showDate];
    }
    
    //Info button made
    infoMe = [UIButton buttonWithType:UIButtonTypeInfoDark];
    if (infoMe !=nil)
    {
        infoMe.frame = CGRectMake(10.0f, 300.0f, 20.0f, 20.0f);
        //Tag button
        infoMe.tag = 2;
        
        //Button target added
        [infoMe addTarget:self action:@selector(onClick:) forControlEvents:UIControlEventTouchUpInside];
        [self.view addSubview:infoMe];
    }
    
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

//Click function from login button
-(void)onClick:(UIButton*)button 
{
    switch (button.tag) {
        case btnLogin:
        {
            //Login check
            if ([textField.text length] == 0)
            {
                userField.text = @"Username cannot be empty.";
                userField.textColor = [UIColor redColor];
            }
            else if ([textField.text length] >= 1)
            {
                NSString *theInfo = [[NSString alloc] initWithFormat: @"User: %@ has been logged in", textField.text];
                userField.textColor = [UIColor whiteColor];
                userField.text = theInfo;
            }
        }
            break;
            
        case btnDate:
        {
            //Date display
            NSDate *date = [NSDate date];
            NSDateFormatter *dateFormat = [[NSDateFormatter alloc] init];
            if (dateFormat !=nil)
            {
                NSDateFormatter* formatter = [[[NSDateFormatter alloc] init] autorelease];
                [formatter setDateFormat:@"MMMM dd, yyyy hh:mm:ss a zzzz"];
                NSString* formattedDate = [formatter stringFromDate:date];
                
                UIAlertView *alertView = [[UIAlertView alloc] initWithTitle:@"Loading" message: formattedDate delegate:nil cancelButtonTitle:@"ok" otherButtonTitles:nil];
                
                if (alertView !=nil)
                {
                    [alertView show];
                }
            }
        }
            break;
            
        case btnInfo:
        {
            if (infoMe !=nil)
            {
                info = [[UILabel alloc] initWithFrame: CGRectMake(10.0f, 340.0f, 200.0f, 50.0f)];
                
                if (info !=nil)
                {
                    NSString *myInfo = @"This application was created by: Devona Ward";
                    info.text= myInfo;
                    info.numberOfLines = 2;
                }
                [self.view addSubview: info];
            }
        }
        default:
            break;
    }


 
        



    

}
@end
