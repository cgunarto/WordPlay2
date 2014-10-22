//
//  EnterAdjectiveViewController.m
//  WordPlay2
//
//  Created by CHRISTINA GUNARTO on 10/21/14.
//  Copyright (c) 2014 Christina Gunarto. All rights reserved.
//

#import "EnterAdjectiveViewController.h"
#import "EnterNounViewController.h"

@interface EnterAdjectiveViewController ()
@property (weak, nonatomic) IBOutlet UITextField *adjectiveTextField;

@end

@implementation EnterAdjectiveViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

//Passing the name from enterNameVC and the adjective from self to enterNounVC
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    EnterNounViewController *enterNounVC = segue.destinationViewController; // setting the view to the segue's destinationVC
    enterNounVC.name = self.name;
    enterNounVC.adjective = self.adjectiveTextField.text;
}

- (BOOL)shouldPerformSegueWithIdentifier:(NSString *)identifier sender:(id)sender
{
    //if adjectiveTextField is empty, return 0 or NO so segue doesn't happen
    if ([self.adjectiveTextField.text length] == 0) // checking if it's empty
    {
        return NO;
    }
    else
    {
        return YES;
    }

}

@end
