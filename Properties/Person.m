//
//  Person.m
//  Properties
//
//  Created by Jhaybie on 9/19/13.
//  Copyright (c) 2013 Jay Basco. All rights reserved.
//

#import "Person.h"

@implementation Person

    @synthesize name;

    @synthesize salary;

    @synthesize netsalary;
        - (float) netsalary
        {
            return salary * 0.85;
        }

@end
