//
//  EnterNameViewController.m
//  WordPlay2
//
//  Created by CHRISTINA GUNARTO on 10/21/14.
//  Copyright (c) 2014 Christina Gunarto. All rights reserved.
//

#import "EnterNameViewController.h"
#import "EnterAdjectiveViewController.h"

@interface EnterNameViewController ()
@property (weak, nonatomic) IBOutlet UITextField *nameTextField;

@end

@implementation EnterNameViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
}

//passing the name from self to enterAdjectiveVC so that we can pass it on to the resultsVC -- since this will all be displayed there
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // passing the nameTextField text to the destinationVC's name property
    EnterAdjectiveViewController *enterAdjectiveVC = segue.destinationViewController;
    enterAdjectiveVC.name = self.nameTextField.text;
}

- (BOOL)shouldPerformSegueWithIdentifier:(NSString *)identifier sender:(id)sender
{
    //checking if nameTextField is empty, return 0 or NO so segue doesn't happen
    if ([self.nameTextField.text length] == 0) 
    {
        return NO;
    }
    else
    {
        return YES;
    }

}

@end
