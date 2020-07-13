// Copyright 2019 Google
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//      http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

#import "FIRFADLogger.h"

#import <FirebaseCore/FIRLogger.h>

FIRLoggerService kFIRLoggerAppDistribution = @"[Firebase/AppDistribution]";

NSString *const AppDistributionMessageCode = @"I-FAD000000";

void FIRFADDebugLog(NSString *message, ...) {
  va_list args_ptr;
  va_start(args_ptr, message);
  NSLogv(message, args_ptr);
  FIRLogBasic(FIRLoggerLevelDebug, kFIRLoggerAppDistribution, AppDistributionMessageCode, message,
              args_ptr);
  va_end(args_ptr);
}

void FIRFADInfoLog(NSString *message, ...) {
  va_list args_ptr;
  va_start(args_ptr, message);
  NSLogv(message, args_ptr);
  FIRLogBasic(FIRLoggerLevelInfo, kFIRLoggerAppDistribution, AppDistributionMessageCode, message,
              args_ptr);
  va_end(args_ptr);
}

void FIRFADWarningLog(NSString *message, ...) {
  va_list args_ptr;
  va_start(args_ptr, message);
  NSLogv(message, args_ptr);
  FIRLogBasic(FIRLoggerLevelWarning, kFIRLoggerAppDistribution, AppDistributionMessageCode, message,
              args_ptr);
  va_end(args_ptr);
}

void FIRFADErrorLog(NSString *message, ...) {
  va_list args_ptr;
  va_start(args_ptr, message);
  NSLogv(message, args_ptr);
  FIRLogBasic(FIRLoggerLevelError, kFIRLoggerAppDistribution, AppDistributionMessageCode, message,
              args_ptr);
  va_end(args_ptr);
}