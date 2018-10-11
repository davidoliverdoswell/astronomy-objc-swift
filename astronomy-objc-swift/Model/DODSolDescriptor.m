//
//  DODSolDescriptor.m
//  astronomy-objc-swift
//
//  Created by David Doswell on 10/10/18.
//  Copyright © 2018 David Doswell. All rights reserved.
//

#import "DODSolDescriptor.h"

@implementation DODSolDescriptor

- (instancetype)initWithInt:(NSInteger)sol totalPhotos:(NSInteger)totalPhotos cameras:(NSArray *)cameras
{
    if (self) {
        
        _sol = sol;
        _totalPhotos = totalPhotos;
        _cameras = cameras;
    }
    return self;
}

- (instancetype)initWithDictionary:(NSDictionary*)dictionary
{
    NSInteger sol = [dictionary[@"sol"] integerValue];
    NSInteger totalPhotos = [dictionary[@"totalPhotos"] integerValue];
    NSArray *cameras = dictionary[@"cameras"];
    
    return [self initWithInt:sol totalPhotos:totalPhotos cameras:cameras];
}

@end
