//
//  QuizViewController.h
//  Quiz
//
//  Created by Yin on 14-1-12.
//  Copyright (c) 2014年 Jack Yin. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface QuizViewController : UIViewController
{
    int currentQuestionIndex;
    
    // 模型对象
    NSMutableArray *questions;
    NSMutableArray *answers;
    
    // 视图对象
    IBOutlet UILabel *questionField;
    IBOutlet UILabel *answerField;
}

- (IBAction)showQuestion:(id)sender;
- (IBAction)showAnswer:(id)sender;

@end
