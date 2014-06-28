//
//  ViewController.m
//  PartsAdhere
//
//  Created by 伊藤駿吾 on 2014/06/28.
//  Copyright (c) 2014年 myname. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

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

@implementation DragView

- (void) touchesBegan:(NSSet*)touches withEvent:(UIEvent*)event
{
	startLocation = [[touches anyObject] locationInView:self];
}

- (void) touchesMoved:(NSSet*)touches withEvent:(UIEvent*)event
{
	CGPoint pt = [[touches anyObject] locationInView:self];
	CGRect frame = [self frame];
	frame.origin.x += pt.x - startLocation.x;
	frame.origin.y += pt.y - startLocation.y;
	[self setFrame:frame];
}

@end;