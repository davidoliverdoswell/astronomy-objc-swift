//
//  DODCamera.m
//  astronomy-objc-swift
//
//  Created by David Doswell on 10/9/18.
//  Copyright © 2018 David Doswell. All rights reserved.
//

#import "DODCamera.h"

@implementation DODCamera

- (instancetype)initWithId:(NSInteger)identifier name:(NSString *)name roverId:(NSInteger)roverId fullName:(NSString *)fullName
{
    if (self = [super init]) {
        _identifier = identifier;
        _name = name;
        _roverId = roverId;
        _fullName = fullName;
    }
    return self;
}

- (instancetype)initWithDictionary:(NSDictionary *)dictionary
{
    NSInteger identifier = [dictionary[@"id"] integerValue];
    
    NSString *name = dictionary[@"name"];
    
    NSInteger roverId = [dictionary[@"rover_id"] integerValue];
    
    NSString *fullName = dictionary[@"full_name"];
    
    return [self initWithId:identifier name:name roverId:roverId fullName:fullName];
}
    
    @end
    
