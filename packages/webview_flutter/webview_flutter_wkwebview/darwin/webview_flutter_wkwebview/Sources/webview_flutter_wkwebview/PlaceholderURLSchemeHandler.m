// Copyright 2013 The Flutter Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// Using directory structure to remove platform-specific files doesn't work
// well with umbrella headers and module maps, so just no-op the file for
// other platforms instead.

#import "./include/webview_flutter_wkwebview/PlaceholderURLSchemeHandler.h"

@implementation PlaceholderURLSchemeHandler

- (void)webView:(nonnull WKWebView *)webView startURLSchemeTask:(nonnull id<WKURLSchemeTask>)urlSchemeTask {
  [urlSchemeTask didFinish];
}

- (void)webView:(nonnull WKWebView *)webView stopURLSchemeTask:(nonnull id<WKURLSchemeTask>)urlSchemeTask { 

}

@end

