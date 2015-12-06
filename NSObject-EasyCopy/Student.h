//
//  Student.h
//  NSObject-EasyCopy
//
//  Created by York on 15/12/6.
//  Copyright © 2015年 YK-Unit. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Student : NSObject

@property (nonatomic,assign) NSInteger grade;
@property (nonatomic,copy) NSString *name;
@property (nonatomic,assign) BOOL male;

@end
