//
//  QuizViewController.m
//  Quiz
//
//  Created by Yin on 14-1-12.
//  Copyright (c) 2014年 Jack Yin. All rights reserved.
//

#import "QuizViewController.h"

@interface QuizViewController ()

@end

@implementation QuizViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    // 创建两个数组对象并为指针赋值，指向这两个数组对象
    questions = [[NSMutableArray alloc] init];
    answers = [[NSMutableArray alloc] init];
        
    // 将问题和答案加入数组对象
    [questions addObject:@"7 + 7 是多少?"];
    [answers addObject:@"14"];
        
    [questions addObject:@"iOS 的开发语言是什么?"];
    [answers addObject:@"Objective-C"];
        
    [questions addObject:@"白兰地是由什么做出来的?"];
    [answers addObject:@"葡萄"];
    
}

- (IBAction)showQuestion:(id)sender
{
    // 转至下一个问题
    currentQuestionIndex++;
    
    // 判断当前问题是否是最后一个
    if (currentQuestionIndex == [questions count]) {
        
        // 返回至第一个问题
        currentQuestionIndex = 0;
    }
    
    // 根据索引获取 questions 数组中的字符串
    NSString *question = [questions objectAtIndex:currentQuestionIndex];
    
    // 将得到的字符串输出至控制台
    NSLog(@"displaying question: %@", question);
    
    // 用问题标签显示该字符串
    [questionField setText:question];
    
    // 重置答案标签
    [answerField setText:@"???"];
}

- (IBAction)showAnswer:(id)sender
{
    // 得到当前问题的答案
    NSString *answer = [answers objectAtIndex:currentQuestionIndex];
    
    // 用答案标签显示该答案
    [answerField setText:answer];
}












@end
