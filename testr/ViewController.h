//
//  ViewController.h
//  testr
//
//  Created by 田所　龍 on 2015/09/03.
//  Copyright (c) 2015年 田所　龍. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController<UITextFieldDelegate>
{
    IBOutlet UILabel *label;
    IBOutlet UITextField *tf;
    IBOutlet UILabel *label_a;
    
    int number;

    
}

-(IBAction)button;

@end

