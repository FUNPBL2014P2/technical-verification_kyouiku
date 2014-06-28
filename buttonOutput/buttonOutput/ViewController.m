//
//  ViewController.m
//  buttonOutput
//
//  Created by 伊藤駿吾 on 2014/06/27.
//  Copyright (c) 2014年 myname. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];

}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)output:(id)sender {
    self.view0.image = [UIImage imageNamed:@"go0.png"];
    self.view45.image = [UIImage imageNamed:@"go45.png"];
    self.view90.image = [UIImage imageNamed:@"go90.png"];
    self.view135.image = [UIImage imageNamed:@"go135.png"];
    self.view180.image = [UIImage imageNamed:@"go180.png"];
    self.view225.image = [UIImage imageNamed:@"go225.png"];
    self.view270.image = [UIImage imageNamed:@"go270.png"];
    self.view315.image = [UIImage imageNamed:@"go315.png"];
    
}

- (IBAction)deleteBtn:(id)sender {
    
    self.view0.image = nil;
    self.view45.image = nil;
    self.view90.image = nil;
    self.view135.image = nil;
    self.view180.image = nil;
    self.view225.image = nil;
    self.view270.image = nil;
    self.view315.image = nil;

}

@end
