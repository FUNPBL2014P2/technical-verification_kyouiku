//
//  ViewController.h
//  PartsAdhere
//
//  Created by 伊藤駿吾 on 2014/06/28.
//  Copyright (c) 2014年 myname. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
@property (weak, nonatomic) IBOutlet UIImageView *startiv;

@end

@interface DragView : UIImageView {
	CGPoint startLocation;
}
@property (retain) UIImageView *goaliv;

@end