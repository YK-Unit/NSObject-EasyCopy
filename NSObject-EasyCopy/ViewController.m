//
//  ViewController.m
//  NSObject-EasyCopy
//
//  Created by York on 15/12/1.
//  Copyright © 2015年 YK-Unit. All rights reserved.
//

#import "ViewController.h"
#import "Teacher.h"
#import "Student.h"
#import "Monitor.h"
#import "NSObject+EasyCopy.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    Monitor *monitor = [[Monitor alloc] init];
    monitor.grade = 1;
    monitor.name = @"monitor";
    monitor.male = YES;
    monitor.phoneNum = @"12345678901";
    
    Teacher *teacher = [[Teacher alloc] init];
    teacher.name = @"York";
    teacher.monitor = monitor;
    teacher.students = [[NSMutableArray alloc] init];
    
    for (NSInteger i = 0; i < 2; i++) {
        Student *student = [[Student alloc] init];
        student.grade = 1;
        student.name = [NSString stringWithFormat:@"studnet_%ld",(long)i+1];
        student.male = (i%2);
        
        [teacher.students addObject:student];
    }
    
    Teacher *shallowTeacher = [[Teacher alloc] init];
    [shallowTeacher easyShallowCopy:teacher];
    
    Teacher *deepTeacher = [[Teacher alloc] init];
    [deepTeacher easyDeepCopy:teacher];
    
    Monitor *shallowMonitor = [[Monitor alloc] init];
    [shallowMonitor easyShallowCopy:monitor];
    
    Monitor *deepMonitor = [[Monitor alloc] init];
    [deepMonitor easyDeepCopy:monitor];
    
    NSLog(@"the address of monitor:\n%p\n%p\n%p",teacher.monitor,shallowTeacher.monitor,deepTeacher.monitor);
    NSLog(@"the address of students:\n%p\n%p\n%p",teacher.students,shallowTeacher.students,deepTeacher.students);
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
