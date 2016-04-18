//
//  MTDParseDictionary.h
//
//  Created by fmricky on 15/3/10.
//

#import <Foundation/Foundation.h>


long getLongInDict(NSDictionary* dict, NSString *key);

int getIntInDict(NSDictionary* dict, NSString *key);

NSNumber* getNumberInDict(NSDictionary* dict, NSString *key);

NSString* getStringInDict(NSDictionary* dict, NSString *key);

NSDictionary* getDictionaryInDict(NSDictionary* dict, NSString *key);

NSDate* getDateInDict(NSDictionary* dict, NSString *key);

NSArray* getArrayInDict(NSDictionary* dict, NSString *key);

NSMutableArray* getMutableArrayInDict(NSDictionary* dict, NSString *key);

BOOL getBoolInDict(NSDictionary* dict,NSString *key);

float getFloatInDict(NSDictionary* dict,NSString *key);

@interface MTDParseDictionary : NSObject

@end
