///
/// Auto-generated by Stone, do not modify.
///

#import <Foundation/Foundation.h>
#import "DBXSerializableProtocol.h"

@class DBXSHARINGTransferFolderArg;

/// 
/// The `DBXSHARINGTransferFolderArg` struct.
/// 
/// This class implements the `DBXSerializable` protocol (`serialize` and
/// `deserialize` instance methods), which is required for all Obj-C SDK API
/// route objects.
/// 
@interface DBXSHARINGTransferFolderArg : NSObject <DBXSerializable> 

/// The ID for the shared folder.
@property (nonatomic, copy) NSString * _Nonnull sharedFolderId;

/// A account or team member ID to transfer ownership to.
@property (nonatomic, copy) NSString * _Nonnull toDropboxId;

/// Full constructor for the `TransferFolderArg` struct (exposes all instance
/// variables).
- (nonnull instancetype)initWithSharedFolderId:(NSString * _Nonnull)sharedFolderId toDropboxId:(NSString * _Nonnull)toDropboxId;

/// Returns a human-readable representation of the `DBXSHARINGTransferFolderArg`
/// object.
- (NSString * _Nonnull)description;

@end


/// 
/// The serialization class for the `DBXSHARINGTransferFolderArg` struct.
/// 
@interface DBXSHARINGTransferFolderArgSerializer : NSObject 

/// Returns a json-compatible dictionary representation of the
/// `DBXSHARINGTransferFolderArg` object from an instantiation.
+ (NSDictionary * _Nonnull)serialize:(DBXSHARINGTransferFolderArg * _Nonnull)obj;

/// Returns an instantiation of the `DBXSHARINGTransferFolderArg` object from a
/// json-compatible dictionary representation.
+ (DBXSHARINGTransferFolderArg * _Nonnull)deserialize:(NSDictionary * _Nonnull)dict;

@end