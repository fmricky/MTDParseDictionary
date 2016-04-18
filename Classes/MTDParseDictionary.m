//
//  MTDParseDictionary.m
//
//  Created by fmricky on 2016-04-18.
//

#import "MTDParseDictionary.h"


@implementation MTDParseDictionary

long getLongInDict(NSDictionary* dict, NSString *key)
{
    id tmp = getNumberInDict(dict, key);
    if (tmp)
    {
        return [tmp longValue];
    }
    
    tmp = getStringInDict(dict, key);
    if (tmp)
    {
        return [tmp longValue];
    }
    
    return 0;
}

int getIntInDict(NSDictionary* dict, NSString *key)
{
    id tmp = getNumberInDict(dict, key);
    if (tmp)
    {
        return (int)[tmp integerValue];
    }
    
    tmp = getStringInDict(dict, key);
    if (tmp)
    {
        return (int)[tmp integerValue];
    }
    
    return 0;
}

NSNumber* getNumberInDict(NSDictionary* dict, NSString *key)
{
    return getDataInDict(dict, key, [NSNumber class]);
}

NSString* getStringInDict(NSDictionary* dict, NSString *key)
{
    return getDataInDict(dict, key, [NSString class]);
}

NSDictionary* getDictionaryInDict(NSDictionary* dict, NSString *key)
{
    return getDataInDict(dict, key, [NSDictionary class]);
}

NSArray* getArrayInDict(NSDictionary* dict, NSString *key)
{
    return getDataInDict(dict, key, [NSArray class]);
}

NSMutableArray* getMutableArrayInDict(NSDictionary* dict, NSString *key)
{
    return getDataInDict(dict, key, [NSMutableArray class]);
}

NSDate* getDateInDict(NSDictionary* dict, NSString *key)
{
    return getDataInDict(dict, key, [NSDate class]);
}

BOOL getBoolInDict(NSDictionary* dict,NSString *key)
{
    id tmp = getNumberInDict(dict, key);
    if (tmp)
    {
        return [tmp boolValue];
    }
    
    tmp = getStringInDict(dict, key);
    if (tmp)
    {
        return [tmp boolValue];
    }
    
    return 0;
}

float getFloatInDict(NSDictionary* dict,NSString *key)
{
    id tmp = getNumberInDict(dict, key);
    if (tmp)
    {
        return [tmp floatValue];
    }
    
    tmp = getStringInDict(dict, key);
    if (tmp)
    {
        return [tmp floatValue];
    }
    
    return 0;
    
    //    return [getDataInDict(dict,key,[NSNumber class]) floatValue];
}

id getDataInDict(NSDictionary* dict, NSString *key, Class class)
{
    if (![dict isKindOfClass:[NSDictionary class]])
    {
        return nil;
    }
    
    id temp = [dict objectForKey:key];
    
    if ([temp isKindOfClass:class])
    {
        return temp;
    }
    //NSLog(@"Warning: The data type mismatch:Class:%@,Key:%@,dict:%@",class, key, dict);
    return nil;
}

@end
