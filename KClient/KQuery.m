//
//  KQuery.m
//  KClient
//
//  Created by Tung Pham Gia on 11/2/12.
//  Copyright (c) 2012 PG Co.ltd. All rights reserved.
//

#import "KQuery.h"
#import "ASIFormDataRequest.h"

@implementation KQuery
@synthesize className = _className;
@synthesize limit = _limit;
@synthesize skip = _skip;

#pragma mark Query options
+ (KQuery *)queryWithClassName:(NSString *)className{
    KQuery *query = [[KQuery alloc] initWithClassName:className];
    return query;
}

- (id)initWithClassName:(NSString *)newClassName{
    self = [super init];
    if (self) {
        // Custom initialization
        self.className = [[NSString alloc] initWithString:newClassName];
    }
    
    return self;
}

#pragma mark -
#pragma mark Count methods

/** @name Counting the Matches in a Query */

/*!
 Counts objects based on the constructed query.
 @result Returns the number of PFObjects that match the query, or -1 if there is an error.
 */
- (NSInteger)countObjects{
    return 0;
}

- (NSArray*)findObjects
{
    if(!self.limit) self.limit = 100;
    NSString *strUrl = [NSString stringWithFormat:@"%@/search?limit=%d",KSERVER_KOBJECT_URL,self.limit];
    
    NSMutableArray *returnArray = [[NSMutableArray alloc] init];

    NSURL *url = [NSURL URLWithString:strUrl];
    
    NSDictionary* params = [NSDictionary dictionaryWithObject:@"RestKit" forKey:@"Sender"];
    [[RKClient sharedClient] post:strUrl params:params delegate:self];
    
    return returnArray;
}

- (void)request:(RKRequest*)request didLoadResponse:(RKResponse*)response {
    if ([request isGET]) {
        // Handling GET /foo.xml
        if ([response isOK]) {
            // Success! Let's take a look at the data
            NSLog(@"Retrieved XML: %@", [response bodyAsString]);
        }
    } else if ([request isPOST]) {
        // Handling POST /other.json
        if ([response isJSON]) {
            NSLog(@"Got a JSON response back from our POST!");
        }
    } else if ([request isDELETE]) {
        // Handling DELETE /missing_resource.txt
        if ([response isNotFound]) {
            NSLog(@"The resource path '%@' was not found.", [request resourcePath]);
        }  
    }  
}
@end
