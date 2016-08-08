//
//  PiModule.m
//  AwesomeProject
//
//  Created by Krati Jain on 06/08/16.
//  Copyright © 2016 Facebook. All rights reserved.
//

#import "PiModule.h"

@implementation PiModule

RCT_EXPORT_MODULE();

RCT_EXPORT_METHOD(getDataForKey:(NSString*)key resolver:(RCTPromiseResolveBlock)resolve rejecter:(RCTPromiseRejectBlock)reject)
{
  
  if (key != nil) {
    
    NSMutableDictionary *result = [NSMutableDictionary dictionaryWithDictionary:@{key : @"TestValue"}];
    
    resolve(result);
  } else {
    NSError *err = [NSError
                    errorWithDomain:@"PiModule"
                    code: 500
                    userInfo:@{NSLocalizedDescriptionKey:@"key is null"}
                    ];
    reject(@"PiModule Error",@"key is null",err);
  }
}


@end
