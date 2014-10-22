//
//  ResultsViewController.m
//  WordPlay2
//
//  Created by CHRISTINA GUNARTO on 10/21/14.
//  Copyright (c) 2014 Christina Gunarto. All rights reserved.
//

#import "ResultsViewController.h"

@interface ResultsViewController ()
@property (weak, nonatomic) IBOutlet UITextView *resultsTextView;

@end

@implementation ResultsViewController

- (void)viewDidLoad
{
    [super viewDidLoad];

    // breaking up the mad lib sentence to piece it together later
    NSAttributedString *firstSentence = [[NSAttributedString alloc] initWithString:@".  He/She is a very "];
    NSAttributedString *secondSentence = [[NSAttributedString alloc] initWithString:@" person, and they really like to play with "];
    NSAttributedString *thirdSentence = [[NSAttributedString alloc] initWithString:@". They'll usually start talking about it "];
    NSAttributedString *fourthSentence = [[NSAttributedString alloc] initWithString:@" if you ask them about it."];

    //Set the font as bold
    UIFont *font = [UIFont fontWithName:@"Helvetica-Bold" size:22];

    //Set each to bold and assign it to an NSMutableAttributedString
    NSMutableAttributedString *attributedName= [[NSMutableAttributedString alloc] initWithString:self.name];
    [attributedName addAttribute:NSFontAttributeName value:font range:NSMakeRange(0, [self.name length])];

    NSMutableAttributedString *attributedAdjective= [[NSMutableAttributedString alloc] initWithString:self.adjective];
    [attributedAdjective addAttribute:NSFontAttributeName value:font range:NSMakeRange(0, [self.adjective length])];

    NSMutableAttributedString *attributedNoun= [[NSMutableAttributedString alloc] initWithString:self.noun];
    [attributedNoun addAttribute:NSFontAttributeName value:font range:NSMakeRange(0, [self.noun length])];

    NSMutableAttributedString *attributedAdverb= [[NSMutableAttributedString alloc] initWithString:self.adverb];
    [attributedAdverb addAttribute:NSFontAttributeName value:font range:NSMakeRange(0, [self.adverb length])];

    //Piecing everything one by one... not the most efficient but my brain has stop functioning...
    NSMutableAttributedString *finalSentence = [[NSMutableAttributedString alloc] initWithString: @"The person's name is "];
    [finalSentence appendAttributedString:attributedName];
    [finalSentence appendAttributedString:firstSentence];
    [finalSentence appendAttributedString:attributedAdjective];
    [finalSentence appendAttributedString:secondSentence];
    [finalSentence appendAttributedString:attributedNoun];
    [finalSentence appendAttributedString:thirdSentence];
    [finalSentence appendAttributedString:attributedAdverb];
    [finalSentence appendAttributedString:fourthSentence];

    self.resultsTextView.attributedText = finalSentence;


}




@end
