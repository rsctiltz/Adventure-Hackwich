//
//  StoryViewController.m
//  Adventure
//
//  Created by Ryan Tiltz on 5/13/14.
//  Copyright (c) 2014 Ryan Tiltz. All rights reserved.
//

#import "StoryViewController.h"

@interface StoryViewController ()

@end

@implementation StoryViewController

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(UIButton*)sender
{
    UIViewController * destination = segue.destinationViewController;

    destination.title = sender.titleLabel.text;

}

@end
