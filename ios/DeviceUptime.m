#import "DeviceUptime.h"
#import <React/RCTLog.h>

@implementation DeviceUptime

RCT_EXPORT_MODULE()

RCT_EXPORT_METHOD(getUptime:(RCTPromiseResolveBlock)resolve rejecter:(RCTPromiseRejectBlock)reject)
{
  __uint64_t nsec = clock_gettime_nsec_np(CLOCK_MONOTONIC_RAW);
  NSInteger msec = nsec / 1000000;
  resolve([NSString stringWithFormat:@"%ld", msec]));
}

@end
