//
//  Teacher.h
//  NSObject-EasyCopy
//
//  Created by York on 15/12/6.
//  Copyright © 2015年 YK-Unit. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Student.h"

@interface Teacher : NSObject

@property (nonatomic,copy) NSString *name;
@property (nonatomic,strong) Student *monitor;
@property (nonatomic,strong) NSMutableArray *students;

@end
