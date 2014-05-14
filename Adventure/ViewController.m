//
//  ViewController.m
//  Adventure
//
//  Created by Ryan Tiltz on 5/13/14.
//  Copyright (c) 2014 Ryan Tiltz. All rights reserved.
//

#import "ViewController.h"
#import "StoryViewController.h"

@interface ViewController ()

@property (strong, nonatomic) IBOutlet UILabel *resultLabel;

@end

@implementation ViewController

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(UIButton *)sender
{
    StoryViewController *nextViewController = [segue destinationViewController];
    nextViewController.title = sender.currentTitle;

}

- (IBAction)unwindToBeginning:(UIStoryboardSegue *)unwindSegue
{
    StoryViewController *source;
    source = [unwindSegue sourceViewController];
    self.resultLabel.text = source.resultMessage.text;
    self.title = @"";
}
@end
