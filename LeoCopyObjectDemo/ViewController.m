//
//  ViewController.m
//  LeoCopyObjectDemo
//
//  Created by Leo.Chen on 2018/4/12.
//  Copyright © 2018年 Leo.Chen. All rights reserved.
//

#import "ViewController.h"
#import "MyObject.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];

    
    MyObject *obj = [[MyObject alloc] init];
    obj.name = @"Leo";
    obj.sex = 1;
    obj.height = 1.78;
    NSLog(@"%p", obj);
    NSLog(@"%@", obj.name);
    NSLog(@"%ld", obj.sex);
    NSLog(@"%.2f", obj.height);
    
    NSLog(@"---------华丽分割线---------");
    
    MyObject *copy_obj = [obj copy];
    NSLog(@"%p", copy_obj);
    NSLog(@"%@", copy_obj.name);
    NSLog(@"%ld", copy_obj.sex);
    NSLog(@"%.2f", copy_obj.height);
    
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
}


@end
