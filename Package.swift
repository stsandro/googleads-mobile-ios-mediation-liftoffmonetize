// swift-tools-version:5.3

// Copyright 2025 Google LLC.
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//     http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

import PackageDescription

let package = Package(
  name: "LiftoffMonetizeAdapter",
  platforms: [.iOS(.v12)],
  products: [
    .library(
      name: "LiftoffMonetizeAdapterTarget",
      targets: ["LiftoffMonetizeAdapterTarget"]
    )
  ],
  dependencies: [
    .package(
      name: "VungleAdsSDK",
      url: "https://github.com/Vungle/VungleAdsSDK-SwiftPackageManager.git",
      from: "7.5.3"
    )
  ],
  targets: [
    .target(
      name: "LiftoffMonetizeAdapterTarget",
      dependencies: [
        .target(name: "LiftoffMonetizeAdapter"),
        .product(name: "VungleAdsSDK", package: "VungleAdsSDK"),
      ],
      path: "LiftoffMonetizeAdapterTarget"
    ),
    .binaryTarget(
      name: "LiftoffMonetizeAdapter",
      url:
        "https://dl.google.com/googleadmobadssdk/mediation/ios/liftoffmonetize/LiftoffMonetizeAdapter-7.5.3.0.zip",
      checksum: "d461bafea2b79e0505dae9773fc4ca4b3fc527c3bdcf98ceeaf844d0665fbedd"
    ),
  ]
)
