//
//  LeoCopyObject.m
//  LeoCopyObjectDemo
//
//  Created by Leo.Chen on 2018/4/12.
//  Copyright © 2018年 Leo.Chen. All rights reserved.
//

#import "LeoCopyObject.h"
#import <objc/runtime.h>

@implementation LeoCopyObject

- (id)copyWithZone:(NSZone *)zone
{
    id model = [[[self class] allocWithZone:zone] init];
    
    unsigned int count = 0;
    objc_property_t *prperties = class_copyPropertyList([self class], &count);
    
    for (unsigned int i=0;i<count;i++)
    {
        objc_property_t property = prperties[i];
        
        NSString *key = [NSString stringWithUTF8String:property_getName(property)];
        
        id value = [self valueForKey:key];
        [model setValue:value forKey:key];
        
    }
    
    free(prperties);
    
    
    return model;
}


@end
