//
//  Person.h
//  Properties
//
//  Created by Jhaybie on 9/19/13.
//  Copyright (c) 2013 Jay Basco. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Person : NSObject
    @property (strong,nonatomic) NSString *name;
    @property (nonatomic) float salary;
    @property (readonly, nonatomic) float netsalary;

@end
