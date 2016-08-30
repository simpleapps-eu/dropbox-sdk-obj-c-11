///
/// Copyright (c) 2016 Dropbox, Inc. All rights reserved.
///
/// Auto-generated by Stone, do not modify.
///

#import "DBStoneSerializers.h"
#import "DBStoneValidators.h"
#import "DBTEAMTeamMembershipType.h"

#pragma mark - API Object

@implementation DBTEAMTeamMembershipType 

#pragma mark - Constructors

- (instancetype)initWithFull {
    self = [super init];
    if (self) {
        _tag = DBTEAMTeamMembershipTypeFull;
    }
    return self;
}

- (instancetype)initWithLimited {
    self = [super init];
    if (self) {
        _tag = DBTEAMTeamMembershipTypeLimited;
    }
    return self;
}

#pragma mark - Instance field accessors

#pragma mark - Tag state methods

- (BOOL)isFull {
    return _tag == DBTEAMTeamMembershipTypeFull;
}

- (BOOL)isLimited {
    return _tag == DBTEAMTeamMembershipTypeLimited;
}

- (NSString *)tagName {
    switch (_tag) {
        case DBTEAMTeamMembershipTypeFull:
           return @"DBTEAMTeamMembershipTypeFull";
        case DBTEAMTeamMembershipTypeLimited:
           return @"DBTEAMTeamMembershipTypeLimited";
    }

    @throw([NSException exceptionWithName:@"InvalidTag" reason:@"Tag has an invalid value." userInfo:nil]);
}

#pragma mark - Serialization methods

+ (NSDictionary *)serialize:(id)instance {
    return [DBTEAMTeamMembershipTypeSerializer serialize:instance];
}

+ (id)deserialize:(NSDictionary *)dict {
    return [DBTEAMTeamMembershipTypeSerializer deserialize:dict];
}

#pragma mark - Description method

- (NSString *)description {
    return [[DBTEAMTeamMembershipTypeSerializer serialize:self] description];
}

@end


#pragma mark - Serializer Object

@implementation DBTEAMTeamMembershipTypeSerializer 

+ (NSDictionary *)serialize:(DBTEAMTeamMembershipType *)valueObj {
    NSMutableDictionary *jsonDict = [[NSMutableDictionary alloc] init];

    if ([valueObj isFull]) {
        jsonDict[@".tag"] = @"full";
    }
    else if ([valueObj isLimited]) {
        jsonDict[@".tag"] = @"limited";
    }
    else {
        @throw([NSException exceptionWithName:@"InvalidTag" reason:@"Tag has an invalid value." userInfo:nil]);
    }

    return jsonDict;
}

+ (DBTEAMTeamMembershipType *)deserialize:(NSDictionary *)valueDict {
    NSString *tag = valueDict[@".tag"];

    if ([tag isEqualToString:@"full"]) {
        return [[DBTEAMTeamMembershipType alloc] initWithFull];
    }
    else if ([tag isEqualToString:@"limited"]) {
        return [[DBTEAMTeamMembershipType alloc] initWithLimited];
    }

    @throw([NSException exceptionWithName:@"InvalidTag" reason:@"Tag has an invalid value." userInfo:nil]);
}

@end