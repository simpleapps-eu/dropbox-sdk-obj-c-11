///
/// Copyright (c) 2016 Dropbox, Inc. All rights reserved.
///
/// Auto-generated by Stone, do not modify.
///

#import "DBStoneSerializers.h"
#import "DBStoneValidators.h"
#import "DBTEAMStorageBucket.h"

#pragma mark - API Object

@implementation DBTEAMStorageBucket 

#pragma mark - Constructors

- (instancetype)initWithBucket:(NSString *)bucket users:(NSNumber *)users {

    self = [super init];
    if (self) {
        _bucket = bucket;
        _users = users;
    }
    return self;
}

#pragma mark - Serialization methods

+ (NSDictionary *)serialize:(id)instance {
    return [DBTEAMStorageBucketSerializer serialize:instance];
}

+ (id)deserialize:(NSDictionary *)dict {
    return [DBTEAMStorageBucketSerializer deserialize:dict];
}

#pragma mark - Description method

- (NSString *)description {
    return [[DBTEAMStorageBucketSerializer serialize:self] description];
}

@end


#pragma mark - Serializer Object

@implementation DBTEAMStorageBucketSerializer 

+ (NSDictionary *)serialize:(DBTEAMStorageBucket *)valueObj {
    NSMutableDictionary *jsonDict = [[NSMutableDictionary alloc] init];

    jsonDict[@"bucket"] = valueObj.bucket;
    jsonDict[@"users"] = valueObj.users;

    return jsonDict;
}

+ (DBTEAMStorageBucket *)deserialize:(NSDictionary *)valueDict {
    NSString *bucket = valueDict[@"bucket"];
    NSNumber *users = valueDict[@"users"];

    return [[DBTEAMStorageBucket alloc] initWithBucket:bucket users:users];
}

@end