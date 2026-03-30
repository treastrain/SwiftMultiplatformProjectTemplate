# SwiftMultiplatformProjectTemplate

![Swift: 6.3](https://img.shields.io/badge/Swift-6.3-orange.svg)
[![swift build](https://github.com/treastrain/SwiftMultiplatformProjectTemplate/actions/workflows/swift-build.yml/badge.svg)](https://github.com/treastrain/SwiftMultiplatformProjectTemplate/actions/workflows/swift-build.yml)

> [!NOTE]
> 日本語は後半に記載しています。 / The Japanese version is available below.

## English

A Swift project template designed for building and CI across all environments supported by Swift.

### Features

This repository includes the GitHub Actions workflow `.github/workflows/swift-build.yml`.
This workflow automatically verifies whether the Swift code developers write can be successfully built across a wider range of platforms and environments.

#### Supported Platforms

- **GitHub Actions Runners ([actions/runner-images](https://github.com/actions/runner-images))**
  - macOS (Apple Silicon / Intel)
  - Ubuntu 24.04 / 22.04
- **Cross Compilation (Swift SDK)**
  - Static Linux (x86_64 / aarch64) - static linking for Linux using `swift-linux-musl`
  - WebAssembly (Wasm)
  - Android (x86_64 / aarch64)
- **Container Build Environments (Docker)**
  - Ubuntu (24.04 / 22.04)
  - Debian 12
  - Amazon Linux 2
  - Red Hat Universal Base Image 9 (RHEL UBI 9)
  - Windows Server Core LTSC 2022

### Usage

Please refer to `.github/workflows/swift-build.yml` for detailed behavior. Build compatibility verification is performed against all the environments mentioned above.

#### Specifying the Swift Version

The Swift version used throughout the CI is centrally managed by the `.swift-version` file at the root of the repository. By specifying or changing the required version for your project, the Swift toolchain, SDK bundles, and container image versions set up in the CI will automatically switch to the target version.

---

## 日本語

Swift がサポートするあらゆる環境でのビルドや CI を想定した、Swift プロジェクトのテンプレートです。

### 特徴

このリポジトリには、GitHub Actions のワークフローである `.github/workflows/swift-build.yml` が含まれています。
このワークフローは、開発者が Swift で作成したコードが、より多くのプラットフォームや環境で正常にビルドできるかを自動的に検証します。

#### 対応プラットフォーム

- **GitHub Actions のランナー ([actions/runner-images](https://github.com/actions/runner-images))**
  - macOS (Apple Silicon / Intel)
  - Ubuntu 24.04 / 22.04
- **クロスコンパイル環境 (Swift SDK)**
  - Static Linux (x86_64 / aarch64) - `swift-linux-musl` を利用した Linux 向け静的リンク
  - WebAssembly (Wasm)
  - Android (x86_64 / aarch64)
- **コンテナビルド環境 (Docker)**
  - Ubuntu (24.04 / 22.04)
  - Debian 12
  - Amazon Linux 2
  - Red Hat Universal Base Image 9 (RHEL UBI 9)
  - Windows Server Core LTSC 2022

### 使い方

詳細な動作内容については `.github/workflows/swift-build.yml` を参照してください。上記すべての環境を対象にしたビルド互換性の検証が行われるようになっています。

#### Swift バージョンの指定

CI 全体で使用される Swift のバージョンは、リポジトリ直下の `.swift-version` ファイルによって一元管理されています。プロジェクトで要求するバージョンを指定・変更することで、CI でセットアップされる Swift ツールチェーン、SDK バンドル、およびコンテナのイメージバージョンが連動して対象のバージョンに切り替わります。
