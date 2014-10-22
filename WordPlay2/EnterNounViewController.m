//
//  EnterNounViewController.m
//  WordPlay2
//
//  Created by CHRISTINA GUNARTO on 10/21/14.
//  Copyright (c) 2014 Christina Gunarto. All rights reserved.
//

#import "EnterNounViewController.h"
#import "EnterAdverbViewController.h"

@interface EnterNounViewController ()
@property (weak, nonatomic) IBOutlet UITextField *nounTextField;

@end

@implementation EnterNounViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
}

//Passing the name from enterNameVC and the adjective from enterAdjVC and noun from self to enterAdverbVC
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    EnterAdverbViewController *enterAdverbVC = segue.destinationViewController; // setting the view to the segue's destinationVC
    enterAdverbVC.name = self.name;
    enterAdverbVC.adjective = self.adjective;
    enterAdverbVC.noun = self.nounTextField.text;
}

- (BOOL)shouldPerformSegueWithIdentifier:(NSString *)identifier sender:(id)sender
{
    //if nounTextField is empty, return 0 or NO so segue doesn't happen
    if ([self.nounTextField.text length] == 0) // checking if it's empty
    {
        return NO;
    }
    else
    {
        return YES;
    }

}



@end
