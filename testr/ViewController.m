//
//  ViewController.m
//  testr
//
//  Created by 田所　龍 on 2015/09/03.
//  Copyright (c) 2015年 田所　龍. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    tf.delegate = self;
    
    label_a = [[UILabel alloc] init];
    label_a.frame = CGRectMake(100,100,100,100);
    label_a.backgroundColor = [UIColor blackColor];
    label_a.layer.cornerRadius = label_a.bounds.size.width/2;
    label_a.clipsToBounds = YES;
    label_a.center = self.view.center;
    [self.view addSubview:label_a];
    // Do any additional setup after loading the view, typically from a nib.
    
    NSTimer *timer = [NSTimer scheduledTimerWithTimeInterval:0.01
                                                  target:self
                                                  selector:@selector(update)
                                                    userInfo:nil
                                                     repeats:YES];
    
    [timer fire];
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(IBAction)button{
    number ++;
    label.text = [NSString stringWithFormat:@"%d",number];
    label.textColor = [UIColor redColor];
    }

-(BOOL)textFieldShouldReturn:(UITextField *)textField{
    [tf resignFirstResponder];
    return YES;
}

-(void)update{
//    int x = arc4random_uniform(self.view.bounds.size.width + 1);
//    int y = arc4random_uniform(self.view.bounds.size.height + 1);
//    label_a.center = CGPointMake(x, y);
    
    label_a.center = CGPointMake(label_a.center.x + 1, label_a.center.y + 1);
    
}

@end
