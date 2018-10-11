//
//  DODSolDescriptor.h
//  astronomy-objc-swift
//
//  Created by David Doswell on 10/10/18.
//  Copyright © 2018 David Doswell. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface DODSolDescriptor : NSObject

@property (nonatomic, readonly) NSInteger sol;
@property (nonatomic, readonly) NSInteger totalPhotos;
@property (nonatomic, readonly) NSArray* cameras;

- (instancetype)initWithInt:(NSInteger)sol totalPhotos:(NSInteger)totalPhotos cameras:(NSArray *)cameras;

- (instancetype)initWithDictionary:(NSDictionary *)dictionary;

@end

NS_ASSUME_NONNULL_END
