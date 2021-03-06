///
/// Copyright (c) 2016 Dropbox, Inc. All rights reserved.
///
/// Auto-generated by Stone, do not modify.
///

#import "DBStoneSerializers.h"
#import "DBStoneValidators.h"
#import "DBTEAMGroupMembersAddError.h"
#import "DBTEAMGroupSelectorError.h"

#pragma mark - API Object

@implementation DBTEAMGroupMembersAddError

@synthesize membersNotInTeam = _membersNotInTeam;
@synthesize usersNotFound = _usersNotFound;
@synthesize userCannotBeManagerOfCompanyManagedGroup = _userCannotBeManagerOfCompanyManagedGroup;

#pragma mark - Constructors

- (instancetype)initWithGroupNotFound {
  self = [super init];
  if (self) {
    _tag = DBTEAMGroupMembersAddErrorGroupNotFound;
  }
  return self;
}

- (instancetype)initWithOther {
  self = [super init];
  if (self) {
    _tag = DBTEAMGroupMembersAddErrorOther;
  }
  return self;
}

- (instancetype)initWithDuplicateUser {
  self = [super init];
  if (self) {
    _tag = DBTEAMGroupMembersAddErrorDuplicateUser;
  }
  return self;
}

- (instancetype)initWithGroupNotInTeam {
  self = [super init];
  if (self) {
    _tag = DBTEAMGroupMembersAddErrorGroupNotInTeam;
  }
  return self;
}

- (instancetype)initWithMembersNotInTeam:(NSArray<NSString *> *)membersNotInTeam {
  self = [super init];
  if (self) {
    _tag = DBTEAMGroupMembersAddErrorMembersNotInTeam;
    _membersNotInTeam = membersNotInTeam;
  }
  return self;
}

- (instancetype)initWithUsersNotFound:(NSArray<NSString *> *)usersNotFound {
  self = [super init];
  if (self) {
    _tag = DBTEAMGroupMembersAddErrorUsersNotFound;
    _usersNotFound = usersNotFound;
  }
  return self;
}

- (instancetype)initWithUserMustBeActiveToBeOwner {
  self = [super init];
  if (self) {
    _tag = DBTEAMGroupMembersAddErrorUserMustBeActiveToBeOwner;
  }
  return self;
}

- (instancetype)initWithUserCannotBeManagerOfCompanyManagedGroup:
    (NSArray<NSString *> *)userCannotBeManagerOfCompanyManagedGroup {
  self = [super init];
  if (self) {
    _tag = DBTEAMGroupMembersAddErrorUserCannotBeManagerOfCompanyManagedGroup;
    _userCannotBeManagerOfCompanyManagedGroup = userCannotBeManagerOfCompanyManagedGroup;
  }
  return self;
}

#pragma mark - Instance field accessors

- (NSArray<NSString *> *)membersNotInTeam {
  if (![self isMembersNotInTeam]) {
    [NSException
         raise:@"IllegalStateException"
        format:@"Invalid tag: required DBTEAMGroupMembersAddErrorMembersNotInTeam, but was %@.", [self tagName]];
  }
  return _membersNotInTeam;
}

- (NSArray<NSString *> *)usersNotFound {
  if (![self isUsersNotFound]) {
    [NSException raise:@"IllegalStateException"
                format:@"Invalid tag: required DBTEAMGroupMembersAddErrorUsersNotFound, but was %@.", [self tagName]];
  }
  return _usersNotFound;
}

- (NSArray<NSString *> *)userCannotBeManagerOfCompanyManagedGroup {
  if (![self isUserCannotBeManagerOfCompanyManagedGroup]) {
    [NSException
         raise:@"IllegalStateException"
        format:@"Invalid tag: required DBTEAMGroupMembersAddErrorUserCannotBeManagerOfCompanyManagedGroup, but was %@.",
               [self tagName]];
  }
  return _userCannotBeManagerOfCompanyManagedGroup;
}

#pragma mark - Tag state methods

- (BOOL)isGroupNotFound {
  return _tag == DBTEAMGroupMembersAddErrorGroupNotFound;
}

- (BOOL)isOther {
  return _tag == DBTEAMGroupMembersAddErrorOther;
}

- (BOOL)isDuplicateUser {
  return _tag == DBTEAMGroupMembersAddErrorDuplicateUser;
}

- (BOOL)isGroupNotInTeam {
  return _tag == DBTEAMGroupMembersAddErrorGroupNotInTeam;
}

- (BOOL)isMembersNotInTeam {
  return _tag == DBTEAMGroupMembersAddErrorMembersNotInTeam;
}

- (BOOL)isUsersNotFound {
  return _tag == DBTEAMGroupMembersAddErrorUsersNotFound;
}

- (BOOL)isUserMustBeActiveToBeOwner {
  return _tag == DBTEAMGroupMembersAddErrorUserMustBeActiveToBeOwner;
}

- (BOOL)isUserCannotBeManagerOfCompanyManagedGroup {
  return _tag == DBTEAMGroupMembersAddErrorUserCannotBeManagerOfCompanyManagedGroup;
}

- (NSString *)tagName {
  switch (_tag) {
  case DBTEAMGroupMembersAddErrorGroupNotFound:
    return @"DBTEAMGroupMembersAddErrorGroupNotFound";
  case DBTEAMGroupMembersAddErrorOther:
    return @"DBTEAMGroupMembersAddErrorOther";
  case DBTEAMGroupMembersAddErrorDuplicateUser:
    return @"DBTEAMGroupMembersAddErrorDuplicateUser";
  case DBTEAMGroupMembersAddErrorGroupNotInTeam:
    return @"DBTEAMGroupMembersAddErrorGroupNotInTeam";
  case DBTEAMGroupMembersAddErrorMembersNotInTeam:
    return @"DBTEAMGroupMembersAddErrorMembersNotInTeam";
  case DBTEAMGroupMembersAddErrorUsersNotFound:
    return @"DBTEAMGroupMembersAddErrorUsersNotFound";
  case DBTEAMGroupMembersAddErrorUserMustBeActiveToBeOwner:
    return @"DBTEAMGroupMembersAddErrorUserMustBeActiveToBeOwner";
  case DBTEAMGroupMembersAddErrorUserCannotBeManagerOfCompanyManagedGroup:
    return @"DBTEAMGroupMembersAddErrorUserCannotBeManagerOfCompanyManagedGroup";
  }

  @throw([NSException exceptionWithName:@"InvalidTag" reason:@"Tag has an unknown value." userInfo:nil]);
}

#pragma mark - Serialization methods

+ (NSDictionary *)serialize:(id)instance {
  return [DBTEAMGroupMembersAddErrorSerializer serialize:instance];
}

+ (id)deserialize:(NSDictionary *)dict {
  return [DBTEAMGroupMembersAddErrorSerializer deserialize:dict];
}

#pragma mark - Description method

- (NSString *)description {
  return [[DBTEAMGroupMembersAddErrorSerializer serialize:self] description];
}

@end

#pragma mark - Serializer Object

@implementation DBTEAMGroupMembersAddErrorSerializer

+ (NSDictionary *)serialize:(DBTEAMGroupMembersAddError *)valueObj {
  NSMutableDictionary *jsonDict = [[NSMutableDictionary alloc] init];

  if ([valueObj isGroupNotFound]) {
    jsonDict[@".tag"] = @"group_not_found";
  } else if ([valueObj isOther]) {
    jsonDict[@".tag"] = @"other";
  } else if ([valueObj isDuplicateUser]) {
    jsonDict[@".tag"] = @"duplicate_user";
  } else if ([valueObj isGroupNotInTeam]) {
    jsonDict[@".tag"] = @"group_not_in_team";
  } else if ([valueObj isMembersNotInTeam]) {
    jsonDict[@"members_not_in_team"] = [DBArraySerializer serialize:valueObj.membersNotInTeam
                                                          withBlock:^id(id elem) {
                                                            return elem;
                                                          }];
    jsonDict[@".tag"] = @"members_not_in_team";
  } else if ([valueObj isUsersNotFound]) {
    jsonDict[@"users_not_found"] = [DBArraySerializer serialize:valueObj.usersNotFound
                                                      withBlock:^id(id elem) {
                                                        return elem;
                                                      }];
    jsonDict[@".tag"] = @"users_not_found";
  } else if ([valueObj isUserMustBeActiveToBeOwner]) {
    jsonDict[@".tag"] = @"user_must_be_active_to_be_owner";
  } else if ([valueObj isUserCannotBeManagerOfCompanyManagedGroup]) {
    jsonDict[@"user_cannot_be_manager_of_company_managed_group"] =
        [DBArraySerializer serialize:valueObj.userCannotBeManagerOfCompanyManagedGroup
                           withBlock:^id(id elem) {
                             return elem;
                           }];
    jsonDict[@".tag"] = @"user_cannot_be_manager_of_company_managed_group";
  } else {
    jsonDict[@".tag"] = @"other";
  }

  return jsonDict;
}

+ (DBTEAMGroupMembersAddError *)deserialize:(NSDictionary *)valueDict {
  NSString *tag = valueDict[@".tag"];

  if ([tag isEqualToString:@"group_not_found"]) {
    return [[DBTEAMGroupMembersAddError alloc] initWithGroupNotFound];
  } else if ([tag isEqualToString:@"other"]) {
    return [[DBTEAMGroupMembersAddError alloc] initWithOther];
  } else if ([tag isEqualToString:@"duplicate_user"]) {
    return [[DBTEAMGroupMembersAddError alloc] initWithDuplicateUser];
  } else if ([tag isEqualToString:@"group_not_in_team"]) {
    return [[DBTEAMGroupMembersAddError alloc] initWithGroupNotInTeam];
  } else if ([tag isEqualToString:@"members_not_in_team"]) {
    NSArray<NSString *> *membersNotInTeam = [DBArraySerializer deserialize:valueDict[@"members_not_in_team"]
                                                                 withBlock:^id(id elem) {
                                                                   return elem;
                                                                 }];
    return [[DBTEAMGroupMembersAddError alloc] initWithMembersNotInTeam:membersNotInTeam];
  } else if ([tag isEqualToString:@"users_not_found"]) {
    NSArray<NSString *> *usersNotFound = [DBArraySerializer deserialize:valueDict[@"users_not_found"]
                                                              withBlock:^id(id elem) {
                                                                return elem;
                                                              }];
    return [[DBTEAMGroupMembersAddError alloc] initWithUsersNotFound:usersNotFound];
  } else if ([tag isEqualToString:@"user_must_be_active_to_be_owner"]) {
    return [[DBTEAMGroupMembersAddError alloc] initWithUserMustBeActiveToBeOwner];
  } else if ([tag isEqualToString:@"user_cannot_be_manager_of_company_managed_group"]) {
    NSArray<NSString *> *userCannotBeManagerOfCompanyManagedGroup =
        [DBArraySerializer deserialize:valueDict[@"user_cannot_be_manager_of_company_managed_group"]
                             withBlock:^id(id elem) {
                               return elem;
                             }];
    return [[DBTEAMGroupMembersAddError alloc]
        initWithUserCannotBeManagerOfCompanyManagedGroup:userCannotBeManagerOfCompanyManagedGroup];
  }

  return [[DBTEAMGroupMembersAddError alloc] initWithOther];
}

@end
