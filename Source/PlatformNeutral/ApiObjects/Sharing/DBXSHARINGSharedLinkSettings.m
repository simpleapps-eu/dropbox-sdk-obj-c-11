///
/// Auto-generated by Stone, do not modify.
///

#import "DBXSHARINGRequestedVisibility.h"
#import "DBXSHARINGSharedLinkSettings.h"
#import "DBXStoneSerializers.h"
#import "DBXStoneValidators.h"

@implementation DBXSHARINGSharedLinkSettings 

- (instancetype)initWithRequestedVisibility:(DBXSHARINGRequestedVisibility *)requestedVisibility linkPassword:(NSString *)linkPassword expires:(NSDate *)expires {

    self = [super init];
    if (self != nil) {
        _requestedVisibility = requestedVisibility;
        _linkPassword = linkPassword;
        _expires = expires;
    }
    return self;
}

- (instancetype)init {
    return [self initWithRequestedVisibility:nil linkPassword:nil expires:nil];
}

+ (NSDictionary *)serialize:(id)obj {
    return [DBXSHARINGSharedLinkSettingsSerializer serialize:obj];
}

+ (id)deserialize:(NSDictionary *)dict {
    return [DBXSHARINGSharedLinkSettingsSerializer deserialize:dict];
}

- (NSString *)description {
    return [[DBXSHARINGSharedLinkSettingsSerializer serialize:self] description];
}

@end


@implementation DBXSHARINGSharedLinkSettingsSerializer 

+ (NSDictionary *)serialize:(DBXSHARINGSharedLinkSettings *)valueObj {
    NSMutableDictionary *jsonDict = [[NSMutableDictionary alloc] init];

    if (valueObj.requestedVisibility) {
        jsonDict[@"requested_visibility"] = [DBXSHARINGRequestedVisibilitySerializer serialize:valueObj.requestedVisibility];
    }
    if (valueObj.linkPassword) {
        jsonDict[@"link_password"] = valueObj.linkPassword;
    }
    if (valueObj.expires) {
        jsonDict[@"expires"] = [DBXNSDateSerializer serialize:valueObj.expires dateFormat:@"%Y-%m-%dT%H:%M:%SZ"];
    }

    return jsonDict;
}

+ (DBXSHARINGSharedLinkSettings *)deserialize:(NSDictionary *)valueDict {
    DBXSHARINGRequestedVisibility *requestedVisibility = valueDict[@"requested_visibility"] ? [DBXSHARINGRequestedVisibilitySerializer deserialize:valueDict[@"requested_visibility"]] : nil;
    NSString *linkPassword = valueDict[@"link_password"] ?: nil;
    NSDate *expires = valueDict[@"expires"] ? [DBXNSDateSerializer deserialize:valueDict[@"expires"] dateFormat:@"%Y-%m-%dT%H:%M:%SZ"] : nil;

    return [[DBXSHARINGSharedLinkSettings alloc] initWithRequestedVisibility:requestedVisibility linkPassword:linkPassword expires:expires];
}

@end