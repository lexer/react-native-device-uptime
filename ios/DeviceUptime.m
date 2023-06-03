#import "DeviceUptime.h"
#import <React/RCTLog.h>

@implementation DeviceUptime

RCT_EXPORT_MODULE()

RCT_EXPORT_BLOCKING_SYNCHRONOUS_METHOD(getUptime)
{
  __uint64_t nsec = clock_gettime_nsec_np(CLOCK_MONOTONIC_RAW);
  NSInteger msec = nsec / 1000000;
  return @(msec);
}

@end
