//
//  ViewController.m
//  MyScrollView
//
//  Created by Bennett on 2018-08-13.
//  Copyright © 2018 Bennett. All rights reserved.
//

#import "ViewController.h"
#import "MyScrollView.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    MyScrollView *subview = [[MyScrollView alloc]initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, 750)];
    
    UIView *redView = [[UIView alloc]initWithFrame:CGRectMake(20, 20, 100, 100)];
    [redView setBackgroundColor:[UIColor redColor]];
    
    UIView *greenView = [[UIView alloc]initWithFrame:CGRectMake(150, 150, 150, 200)];
    [greenView setBackgroundColor:[UIColor greenColor]];
    
    UIView *blueView = [[UIView alloc]initWithFrame:CGRectMake(40, 400, 200, 150)];
    [blueView setBackgroundColor:[UIColor blueColor]];
    
    UIView *yellowView = [[UIView alloc]initWithFrame:CGRectMake(100, 600, 180, 150)];
    [yellowView setBackgroundColor:[UIColor yellowColor]];
    
    [subview addSubview:redView];
    [subview addSubview:greenView];
    [subview addSubview:blueView];
    [subview addSubview:yellowView];
    
    
    [self.view addSubview:subview];
}


-(void)viewDidAppear:(BOOL)animated{
//    [self.view setBounds:CGRectOffset(self.view.frame, 0, 100)];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
