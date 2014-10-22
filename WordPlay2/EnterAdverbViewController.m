//
//  EnterAdverbViewController.m
//  WordPlay2
//
//  Created by CHRISTINA GUNARTO on 10/21/14.
//  Copyright (c) 2014 Christina Gunarto. All rights reserved.
//

#import "EnterAdverbViewController.h"
#import "ResultsViewController.h"

@interface EnterAdverbViewController ()
@property (weak, nonatomic) IBOutlet UITextField *adverbTextField;

@end

@implementation EnterAdverbViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
}

//Passing the name from enterNameVC and the adjective from enterAdjVC and noun from enterNounVC  and adverb from self to resultsVC
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    ResultsViewController *resultsVC = segue.destinationViewController; // setting the view to the segue's destinationVC
    resultsVC.name = self.name;
    resultsVC.adjective = self.adjective;
    resultsVC.noun = self.noun;
    resultsVC.adverb = self.adverbTextField.text;
}

- (BOOL)shouldPerformSegueWithIdentifier:(NSString *)identifier sender:(id)sender
{
    //if adverb textField is empty, return 0 or NO so segue doesn't happen
    if ([self.adverbTextField.text length] == 0) // checking if it's empty
    {
        return NO;
    }
    else
    {
        return YES;
    }

}






@end
