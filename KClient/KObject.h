//
//  KObject.h
//  KClient
//
//  Created by Tung Pham Gia on 10/30/12.
//  Copyright (c) 2012 PG Co.ltd. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface KObject : NSObject
@property (nonatomic, retain) NSString *objectId;
@property (nonatomic, retain, readonly) NSDate *createdAt;
@property (nonatomic, retain, readonly) NSDate *updatedAt;

+ (KObject *)objectWithClassName:(NSString *)className;
+ (KObject *)objectWithoutDataWithClassName:(NSString *)className objectId:(NSString *)objectId;

- (id)initWithClassName:(NSString *)newClassName;
@end
