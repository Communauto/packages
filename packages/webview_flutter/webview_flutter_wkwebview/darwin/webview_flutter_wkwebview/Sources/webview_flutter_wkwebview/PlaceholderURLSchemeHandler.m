// Copyright 2013 The Flutter Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// Using directory structure to remove platform-specific files doesn't work
// well with umbrella headers and module maps, so just no-op the file for
// other platforms instead.

#import "./include/webview_flutter_wkwebview/PlaceholderURLSchemeHandler.h"

@implementation PlaceholderURLSchemeHandler

- (void)webView:(nonnull WKWebView *)webView startURLSchemeTask:(nonnull id<WKURLSchemeTask>)urlSchemeTask {
  NSLog(@"yayPlaceholderCallback");
  NSURLResponse* urlResponse = [[NSURLResponse alloc] initWithURL:urlSchemeTask.request.URL MIMEType:@"text/html" expectedContentLength:-1 textEncodingName:@"utf-8"];
  [urlSchemeTask didReceiveResponse:urlResponse];
  [urlSchemeTask didReceiveData: [[NSData alloc] init]];
  [urlSchemeTask didFinish];
}

- (void)webView:(nonnull WKWebView *)webView stopURLSchemeTask:(nonnull id<WKURLSchemeTask>)urlSchemeTask { 

}

@end

