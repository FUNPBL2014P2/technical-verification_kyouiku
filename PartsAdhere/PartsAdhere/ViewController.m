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
@synthesize startiv;

- (void)viewDidLoad
{
    [super viewDidLoad];
    //Dragviewクラスをインスタンス化
    DragView *dragview = [[DragView alloc]init];
    
    //画像の生成
    UIImage *goal = [UIImage imageNamed:@"goal.png"];
    
    //UIImageViewに画像を載せる
    dragview.goaliv = [[DragView alloc]initWithImage:goal];
    
    //画像のタッチを有効化
    dragview.goaliv.userInteractionEnabled = YES;
    
    //ビューの座標とサイズ指定
    [dragview.goaliv setFrame:CGRectMake(100.0, 90.0, 248, 89)];
    
    //ビューに表示
    [self.view addSubview:dragview.goaliv];
    
    
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end

@implementation DragView

@synthesize goaliv;

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
    NSLog(@"x:%f y:%f", frame.origin.x, frame.origin.y);

    //ドラッグしてる画像がスタートに近づいたらぴったり合わせる
    if(frame.origin.x>=480 && frame.origin.x<=500 && frame.origin.y>=93 && frame.origin.y<=113){
        frame.origin.x=490;
        frame.origin.y=103;
        [self setFrame:frame];
    }
    
}


@end;