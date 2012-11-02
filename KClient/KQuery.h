//
//  KQuery.h
//  KClient
//
//  Created by Tung Pham Gia on 11/2/12.
//  Copyright (c) 2012 PG Co.ltd. All rights reserved.
//
#import <Restkit/Restkit.h>

@interface KQuery : NSObject<RKRequestDelegate> {
    
}

#pragma mark Query options

/** @name Creating a Query for a Class */

/*!
 Returns a PFQuery for a given class.
 @param className The class to query on.
 @return A PFQuery object.
 */
+ (KQuery *)queryWithClassName:(NSString *)className;

/*!
 Initializes the query with a class name.
 @param newClassName The class name.
 */
- (id)initWithClassName:(NSString *)newClassName;

/*!
 The class name to query for
 */
@property (nonatomic, retain) NSString *className;


#pragma mark -
#pragma mark Count methods

/** @name Counting the Matches in a Query */

/*!
 Counts objects based on the constructed query.
 @result Returns the number of PFObjects that match the query, or -1 if there is an error.
 */
- (NSInteger)countObjects;

#pragma mark -
#pragma mark Find methods

/** @name Getting all Matches for a Query */

/*!
 Finds objects based on the constructed query.
 @result Returns an array of PFObjects that were found.
 */
- (NSArray *)findObjects;

#pragma mark -
#pragma mark Pagination properties

/** @name Paginating Results */
/*!
 A limit on the number of objects to return.  Note: If you are calling findObject with limit=1, you may find it easier to use getFirst instead.
 */
@property (nonatomic) NSInteger limit;

/*!
 A limit on the number of objects to return.  Note: If you are calling findObject with limit=1, you may find it easier to use getFirst instead.
 */
@property (nonatomic) NSInteger offset;

/*!
 The number of objects to skip before returning any.
 */
@property (nonatomic) NSInteger skip;
@end
