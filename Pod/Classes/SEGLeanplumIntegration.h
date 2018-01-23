//
//  SEGLeanplumIntegration.h
//  Leanplum Segment iOS Integration Version 1.0.1
//
//  Copyright (c) 2016 Leanplum. All rights reserved.
//

#import <Analytics/SEGAnalytics.h>
#import <Foundation/Foundation.h>

#if TARGET_OS_IOS
  #import <Leanplum/Leanplum.h>
#else
  #import <LeanplumTV/Leanplum.h>
#endif

@interface SEGLeanplumIntegration : NSObject <SEGIntegration>

- (instancetype)initWithSettings:(NSDictionary *)settings;

@end
