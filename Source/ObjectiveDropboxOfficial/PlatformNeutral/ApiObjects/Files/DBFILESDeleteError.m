///
/// Copyright (c) 2016 Dropbox, Inc. All rights reserved.
///
/// Auto-generated by Stone, do not modify.
///

#import "DBFILESDeleteError.h"
#import "DBFILESLookupError.h"
#import "DBFILESWriteError.h"
#import "DBStoneSerializers.h"
#import "DBStoneValidators.h"

#pragma mark - API Object

@implementation DBFILESDeleteError

@synthesize pathLookup = _pathLookup;
@synthesize pathWrite = _pathWrite;

#pragma mark - Constructors

- (instancetype)initWithPathLookup:(DBFILESLookupError *)pathLookup {
  self = [super init];
  if (self) {
    _tag = DBFILESDeleteErrorPathLookup;
    _pathLookup = pathLookup;
  }
  return self;
}

- (instancetype)initWithPathWrite:(DBFILESWriteError *)pathWrite {
  self = [super init];
  if (self) {
    _tag = DBFILESDeleteErrorPathWrite;
    _pathWrite = pathWrite;
  }
  return self;
}

- (instancetype)initWithOther {
  self = [super init];
  if (self) {
    _tag = DBFILESDeleteErrorOther;
  }
  return self;
}

#pragma mark - Instance field accessors

- (DBFILESLookupError *)pathLookup {
  if (![self isPathLookup]) {
    [NSException raise:@"IllegalStateException"
                format:@"Invalid tag: required DBFILESDeleteErrorPathLookup, but was %@.", [self tagName]];
  }
  return _pathLookup;
}

- (DBFILESWriteError *)pathWrite {
  if (![self isPathWrite]) {
    [NSException raise:@"IllegalStateException"
                format:@"Invalid tag: required DBFILESDeleteErrorPathWrite, but was %@.", [self tagName]];
  }
  return _pathWrite;
}

#pragma mark - Tag state methods

- (BOOL)isPathLookup {
  return _tag == DBFILESDeleteErrorPathLookup;
}

- (BOOL)isPathWrite {
  return _tag == DBFILESDeleteErrorPathWrite;
}

- (BOOL)isOther {
  return _tag == DBFILESDeleteErrorOther;
}

- (NSString *)tagName {
  switch (_tag) {
  case DBFILESDeleteErrorPathLookup:
    return @"DBFILESDeleteErrorPathLookup";
  case DBFILESDeleteErrorPathWrite:
    return @"DBFILESDeleteErrorPathWrite";
  case DBFILESDeleteErrorOther:
    return @"DBFILESDeleteErrorOther";
  }

  @throw([NSException exceptionWithName:@"InvalidTag" reason:@"Tag has an unknown value." userInfo:nil]);
}

#pragma mark - Serialization methods

+ (NSDictionary *)serialize:(id)instance {
  return [DBFILESDeleteErrorSerializer serialize:instance];
}

+ (id)deserialize:(NSDictionary *)dict {
  return [DBFILESDeleteErrorSerializer deserialize:dict];
}

#pragma mark - Description method

- (NSString *)description {
  return [[DBFILESDeleteErrorSerializer serialize:self] description];
}

@end

#pragma mark - Serializer Object

@implementation DBFILESDeleteErrorSerializer

+ (NSDictionary *)serialize:(DBFILESDeleteError *)valueObj {
  NSMutableDictionary *jsonDict = [[NSMutableDictionary alloc] init];

  if ([valueObj isPathLookup]) {
    jsonDict[@"path_lookup"] = [[DBFILESLookupErrorSerializer serialize:valueObj.pathLookup] mutableCopy];
    jsonDict[@".tag"] = @"path_lookup";
  } else if ([valueObj isPathWrite]) {
    jsonDict[@"path_write"] = [[DBFILESWriteErrorSerializer serialize:valueObj.pathWrite] mutableCopy];
    jsonDict[@".tag"] = @"path_write";
  } else if ([valueObj isOther]) {
    jsonDict[@".tag"] = @"other";
  } else {
    jsonDict[@".tag"] = @"other";
  }

  return jsonDict;
}

+ (DBFILESDeleteError *)deserialize:(NSDictionary *)valueDict {
  NSString *tag = valueDict[@".tag"];

  if ([tag isEqualToString:@"path_lookup"]) {
    DBFILESLookupError *pathLookup = [DBFILESLookupErrorSerializer deserialize:valueDict[@"path_lookup"]];
    return [[DBFILESDeleteError alloc] initWithPathLookup:pathLookup];
  } else if ([tag isEqualToString:@"path_write"]) {
    DBFILESWriteError *pathWrite = [DBFILESWriteErrorSerializer deserialize:valueDict[@"path_write"]];
    return [[DBFILESDeleteError alloc] initWithPathWrite:pathWrite];
  } else if ([tag isEqualToString:@"other"]) {
    return [[DBFILESDeleteError alloc] initWithOther];
  }

  return [[DBFILESDeleteError alloc] initWithOther];
}

@end
