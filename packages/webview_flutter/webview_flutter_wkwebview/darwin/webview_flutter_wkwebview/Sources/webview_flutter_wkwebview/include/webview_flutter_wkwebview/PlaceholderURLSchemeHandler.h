// Copyright 2013 The Flutter Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

#import <WebKit/WKURLSchemeHandler.h>
#import <WebKit/WKURLSchemeTask.h>

NS_ASSUME_NONNULL_BEGIN

/// Placeholder implementation for WKURLSchemeHandler
///
/// Handles requests to urls with custom schemes by returning no response
@interface PlaceholderURLSchemeHandler : NSObject <WKURLSchemeHandler>

@end

NS_ASSUME_NONNULL_END

