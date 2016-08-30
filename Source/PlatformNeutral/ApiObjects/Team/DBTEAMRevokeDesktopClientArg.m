///
/// Copyright (c) 2016 Dropbox, Inc. All rights reserved.
///
/// Auto-generated by Stone, do not modify.
///

#import "DBStoneSerializers.h"
#import "DBStoneValidators.h"
#import "DBTEAMDeviceSessionArg.h"
#import "DBTEAMRevokeDesktopClientArg.h"

#pragma mark - API Object

@implementation DBTEAMRevokeDesktopClientArg 

#pragma mark - Constructors

- (instancetype)initWithSessionId:(NSString *)sessionId teamMemberId:(NSString *)teamMemberId deleteOnUnlink:(NSNumber *)deleteOnUnlink {

    self = [super initWithSessionId:sessionId teamMemberId:teamMemberId];
    if (self) {
        _deleteOnUnlink = deleteOnUnlink ?: @NO;
    }
    return self;
}

- (instancetype)initWithSessionId:(NSString *)sessionId teamMemberId:(NSString *)teamMemberId {
    return [self initWithSessionId:sessionId teamMemberId:teamMemberId deleteOnUnlink:nil];
}

#pragma mark - Serialization methods

+ (NSDictionary *)serialize:(id)instance {
    return [DBTEAMRevokeDesktopClientArgSerializer serialize:instance];
}

+ (id)deserialize:(NSDictionary *)dict {
    return [DBTEAMRevokeDesktopClientArgSerializer deserialize:dict];
}

#pragma mark - Description method

- (NSString *)description {
    return [[DBTEAMRevokeDesktopClientArgSerializer serialize:self] description];
}

@end


#pragma mark - Serializer Object

@implementation DBTEAMRevokeDesktopClientArgSerializer 

+ (NSDictionary *)serialize:(DBTEAMRevokeDesktopClientArg *)valueObj {
    NSMutableDictionary *jsonDict = [[NSMutableDictionary alloc] init];

    jsonDict[@"session_id"] = valueObj.sessionId;
    jsonDict[@"team_member_id"] = valueObj.teamMemberId;
    jsonDict[@"delete_on_unlink"] = valueObj.deleteOnUnlink;

    return jsonDict;
}

+ (DBTEAMRevokeDesktopClientArg *)deserialize:(NSDictionary *)valueDict {
    NSString *sessionId = valueDict[@"session_id"];
    NSString *teamMemberId = valueDict[@"team_member_id"];
    NSNumber *deleteOnUnlink = valueDict[@"delete_on_unlink"];

    return [[DBTEAMRevokeDesktopClientArg alloc] initWithSessionId:sessionId teamMemberId:teamMemberId deleteOnUnlink:deleteOnUnlink];
}

@end