// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

// Copyright 2013 The Flutter Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import PackageDescription

let package = Package(
  name: "file_selector_macos",
  platforms: [
    .macOS("10.14")
  ],
  products: [
    .library(name: "file-selector-macos", targets: ["file_selector_macos"])
  ],
  dependencies: [],
  targets: [
    .target(
      name: "file_selector_macos",
      dependencies: [],
      resources: [
        .process("Resources")
      ]
    )
  ]
)
