//
//  ViewController.m
//  VideoPlayer
//
//  Created by LLBER on 12/07/13.
//  Copyright (c) 2013 LLBER. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController




- (IBAction)verVideoLocal:(id)sender {
    
    NSString * video = [[NSBundle mainBundle] pathForResource:@"ejemplo" ofType:@"mov"];
    NSURL * url = [[NSURL alloc] initFileURLWithPath:video];
    
    MPMoviePlayerViewController * player = [[MPMoviePlayerViewController alloc] initWithContentURL:url];
    [self presentMoviePlayerViewControllerAnimated:player];
    player.moviePlayer.movieSourceType = MPMovieSourceTypeFile;
}





- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
