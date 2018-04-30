//
//  ViewController.m
//  LogIn-App-1
//
//  Created by Greete Jõgi on 26/04/2018.
//  Copyright © 2018 Martin Pihooja. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (nonatomic, strong) NSString *username;
@property (nonatomic, strong) NSString *password;
@property (weak, nonatomic) IBOutlet UITextField *usernameTextField;
@property (weak, nonatomic) IBOutlet UITextField *passwordTextField;
@property (weak, nonatomic) IBOutlet UILabel *notificationLabel;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    self.username = @"martin";
    self.password = @"pihooja";
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    [self.view endEditing:true];
}

- (IBAction)logInButtonPressed:(id)sender
{
    BOOL isUsersEqual = [self.username isEqualToString:[self.usernameTextField text]];
    BOOL isPasswordsEqual = [self.password isEqualToString:[self.passwordTextField text]];
    
    if (isUsersEqual && isPasswordsEqual)
    {
        NSLog(@"Success!");
        [self.notificationLabel setText:@"You have logged in"];
    }
    else
    {
        NSLog(@"Failure!");
        [self.notificationLabel setText:@"Wrong username or password"];
    }
}

@end
