///
/// Copyright (c) 2016 Dropbox, Inc. All rights reserved.
///
/// Auto-generated by Stone, do not modify.
///

#import "DBStoneSerializers.h"
#import "DBStoneValidators.h"
#import "DBTEAMMembersDeactivateError.h"
#import "DBTEAMUserSelectorError.h"

#pragma mark - API Object

@implementation DBTEAMMembersDeactivateError

#pragma mark - Constructors

- (instancetype)initWithUserNotFound {
  self = [super init];
  if (self) {
    _tag = DBTEAMMembersDeactivateErrorUserNotFound;
  }
  return self;
}

- (instancetype)initWithUserNotInTeam {
  self = [super init];
  if (self) {
    _tag = DBTEAMMembersDeactivateErrorUserNotInTeam;
  }
  return self;
}

- (instancetype)initWithOther {
  self = [super init];
  if (self) {
    _tag = DBTEAMMembersDeactivateErrorOther;
  }
  return self;
}

#pragma mark - Instance field accessors

#pragma mark - Tag state methods

- (BOOL)isUserNotFound {
  return _tag == DBTEAMMembersDeactivateErrorUserNotFound;
}

- (BOOL)isUserNotInTeam {
  return _tag == DBTEAMMembersDeactivateErrorUserNotInTeam;
}

- (BOOL)isOther {
  return _tag == DBTEAMMembersDeactivateErrorOther;
}

- (NSString *)tagName {
  switch (_tag) {
  case DBTEAMMembersDeactivateErrorUserNotFound:
    return @"DBTEAMMembersDeactivateErrorUserNotFound";
  case DBTEAMMembersDeactivateErrorUserNotInTeam:
    return @"DBTEAMMembersDeactivateErrorUserNotInTeam";
  case DBTEAMMembersDeactivateErrorOther:
    return @"DBTEAMMembersDeactivateErrorOther";
  }

  @throw([NSException exceptionWithName:@"InvalidTag" reason:@"Tag has an unknown value." userInfo:nil]);
}

#pragma mark - Serialization methods

+ (NSDictionary *)serialize:(id)instance {
  return [DBTEAMMembersDeactivateErrorSerializer serialize:instance];
}

+ (id)deserialize:(NSDictionary *)dict {
  return [DBTEAMMembersDeactivateErrorSerializer deserialize:dict];
}

#pragma mark - Description method

- (NSString *)description {
  return [[DBTEAMMembersDeactivateErrorSerializer serialize:self] description];
}

@end

#pragma mark - Serializer Object

@implementation DBTEAMMembersDeactivateErrorSerializer

+ (NSDictionary *)serialize:(DBTEAMMembersDeactivateError *)valueObj {
  NSMutableDictionary *jsonDict = [[NSMutableDictionary alloc] init];

  if ([valueObj isUserNotFound]) {
    jsonDict[@".tag"] = @"user_not_found";
  } else if ([valueObj isUserNotInTeam]) {
    jsonDict[@".tag"] = @"user_not_in_team";
  } else if ([valueObj isOther]) {
    jsonDict[@".tag"] = @"other";
  } else {
    jsonDict[@".tag"] = @"other";
  }

  return jsonDict;
}

+ (DBTEAMMembersDeactivateError *)deserialize:(NSDictionary *)valueDict {
  NSString *tag = valueDict[@".tag"];

  if ([tag isEqualToString:@"user_not_found"]) {
    return [[DBTEAMMembersDeactivateError alloc] initWithUserNotFound];
  } else if ([tag isEqualToString:@"user_not_in_team"]) {
    return [[DBTEAMMembersDeactivateError alloc] initWithUserNotInTeam];
  } else if ([tag isEqualToString:@"other"]) {
    return [[DBTEAMMembersDeactivateError alloc] initWithOther];
  }

  return [[DBTEAMMembersDeactivateError alloc] initWithOther];
}

@end
