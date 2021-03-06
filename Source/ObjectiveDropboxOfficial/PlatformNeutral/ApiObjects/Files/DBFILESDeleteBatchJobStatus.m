///
/// Copyright (c) 2016 Dropbox, Inc. All rights reserved.
///
/// Auto-generated by Stone, do not modify.
///

#import "DBASYNCPollResultBase.h"
#import "DBFILESDeleteBatchError.h"
#import "DBFILESDeleteBatchJobStatus.h"
#import "DBFILESDeleteBatchResult.h"
#import "DBStoneSerializers.h"
#import "DBStoneValidators.h"

#pragma mark - API Object

@implementation DBFILESDeleteBatchJobStatus

@synthesize complete = _complete;
@synthesize failed = _failed;

#pragma mark - Constructors

- (instancetype)initWithInProgress {
  self = [super init];
  if (self) {
    _tag = DBFILESDeleteBatchJobStatusInProgress;
  }
  return self;
}

- (instancetype)initWithComplete:(DBFILESDeleteBatchResult *)complete {
  self = [super init];
  if (self) {
    _tag = DBFILESDeleteBatchJobStatusComplete;
    _complete = complete;
  }
  return self;
}

- (instancetype)initWithFailed:(DBFILESDeleteBatchError *)failed {
  self = [super init];
  if (self) {
    _tag = DBFILESDeleteBatchJobStatusFailed;
    _failed = failed;
  }
  return self;
}

- (instancetype)initWithOther {
  self = [super init];
  if (self) {
    _tag = DBFILESDeleteBatchJobStatusOther;
  }
  return self;
}

#pragma mark - Instance field accessors

- (DBFILESDeleteBatchResult *)complete {
  if (![self isComplete]) {
    [NSException raise:@"IllegalStateException"
                format:@"Invalid tag: required DBFILESDeleteBatchJobStatusComplete, but was %@.", [self tagName]];
  }
  return _complete;
}

- (DBFILESDeleteBatchError *)failed {
  if (![self isFailed]) {
    [NSException raise:@"IllegalStateException"
                format:@"Invalid tag: required DBFILESDeleteBatchJobStatusFailed, but was %@.", [self tagName]];
  }
  return _failed;
}

#pragma mark - Tag state methods

- (BOOL)isInProgress {
  return _tag == DBFILESDeleteBatchJobStatusInProgress;
}

- (BOOL)isComplete {
  return _tag == DBFILESDeleteBatchJobStatusComplete;
}

- (BOOL)isFailed {
  return _tag == DBFILESDeleteBatchJobStatusFailed;
}

- (BOOL)isOther {
  return _tag == DBFILESDeleteBatchJobStatusOther;
}

- (NSString *)tagName {
  switch (_tag) {
  case DBFILESDeleteBatchJobStatusInProgress:
    return @"DBFILESDeleteBatchJobStatusInProgress";
  case DBFILESDeleteBatchJobStatusComplete:
    return @"DBFILESDeleteBatchJobStatusComplete";
  case DBFILESDeleteBatchJobStatusFailed:
    return @"DBFILESDeleteBatchJobStatusFailed";
  case DBFILESDeleteBatchJobStatusOther:
    return @"DBFILESDeleteBatchJobStatusOther";
  }

  @throw([NSException exceptionWithName:@"InvalidTag" reason:@"Tag has an unknown value." userInfo:nil]);
}

#pragma mark - Serialization methods

+ (NSDictionary *)serialize:(id)instance {
  return [DBFILESDeleteBatchJobStatusSerializer serialize:instance];
}

+ (id)deserialize:(NSDictionary *)dict {
  return [DBFILESDeleteBatchJobStatusSerializer deserialize:dict];
}

#pragma mark - Description method

- (NSString *)description {
  return [[DBFILESDeleteBatchJobStatusSerializer serialize:self] description];
}

@end

#pragma mark - Serializer Object

@implementation DBFILESDeleteBatchJobStatusSerializer

+ (NSDictionary *)serialize:(DBFILESDeleteBatchJobStatus *)valueObj {
  NSMutableDictionary *jsonDict = [[NSMutableDictionary alloc] init];

  if ([valueObj isInProgress]) {
    jsonDict[@".tag"] = @"in_progress";
  } else if ([valueObj isComplete]) {
    jsonDict[@"complete"] = [[DBFILESDeleteBatchResultSerializer serialize:valueObj.complete] mutableCopy];
    jsonDict[@".tag"] = @"complete";
  } else if ([valueObj isFailed]) {
    jsonDict[@"failed"] = [[DBFILESDeleteBatchErrorSerializer serialize:valueObj.failed] mutableCopy];
    jsonDict[@".tag"] = @"failed";
  } else if ([valueObj isOther]) {
    jsonDict[@".tag"] = @"other";
  } else {
    jsonDict[@".tag"] = @"other";
  }

  return jsonDict;
}

+ (DBFILESDeleteBatchJobStatus *)deserialize:(NSDictionary *)valueDict {
  NSString *tag = valueDict[@".tag"];

  if ([tag isEqualToString:@"in_progress"]) {
    return [[DBFILESDeleteBatchJobStatus alloc] initWithInProgress];
  } else if ([tag isEqualToString:@"complete"]) {
    DBFILESDeleteBatchResult *complete = [DBFILESDeleteBatchResultSerializer deserialize:valueDict];
    return [[DBFILESDeleteBatchJobStatus alloc] initWithComplete:complete];
  } else if ([tag isEqualToString:@"failed"]) {
    DBFILESDeleteBatchError *failed = [DBFILESDeleteBatchErrorSerializer deserialize:valueDict[@"failed"]];
    return [[DBFILESDeleteBatchJobStatus alloc] initWithFailed:failed];
  } else if ([tag isEqualToString:@"other"]) {
    return [[DBFILESDeleteBatchJobStatus alloc] initWithOther];
  }

  return [[DBFILESDeleteBatchJobStatus alloc] initWithOther];
}

@end
