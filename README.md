## 概要

このプロジェクトは、Flutter アプリケーションの UI コンポーネントをテストするための環境を提供します。Widgetbook と Alchemist を使用して、UI コンポーネントのビジュアルテスト（ゴールデンテスト）を実行できます。

## 主な機能

- Widgetbook を使用した UI コンポーネントのカタログ化
- Alchemist を使用したビジュアルテスト（ゴールデンテスト）の実行
- FVM (Flutter Version Management) による Flutter SDK バージョン管理

## セットアップ方法

1. FVM のインストール:

```bash
brew tap leoafarias/fvm
brew install fvm
```

2. プロジェクトの Flutter バージョンをインストール:

```bash
fvm install --setup
```

3. 依存関係のインストール:

```bash
fvm flutter pub get
```

4. Widgetbook の起動:

```bash
fvm flutter run -t lib/main.dart
```

5. ゴールデンテストの実行:

```bash
fvm flutter test --update-goldens
```

## プロジェクト構造

- `lib/`: メインのアプリケーションコード
- `test/`: テストコードとゴールデンテストの画像
- `test/goldens/`: ゴールデンテストの参照画像
- `widgetbook/`: Widgetbook の設定とカタログ
- `.fvm/`: FVM の設定ファイル

## テストの実行

- 通常のテスト: `fvm flutter test`
- ゴールデンテストの更新: `fvm flutter test --update-goldens`
- 特定のテストファイルの実行: `fvm flutter test test/widget_test.dart`

## FVM の使用方法

- Flutter コマンドの実行: `fvm flutter` を使用
- プロジェクトの Flutter バージョン確認: `fvm flutter --version`
- 新しい Flutter バージョンのインストール: `fvm install <version>`
- グローバルな Flutter バージョンの設定: `fvm global <version>`

## 注意事項

- ゴールデンテストを実行する前に、テスト環境が安定していることを確認してください
- 参照画像は `test/goldens/` ディレクトリに保存されます
- 新しい UI コンポーネントを追加する際は、必ずテストを追加してください
- Flutter コマンドを実行する際は、必ず `fvm flutter` を使用してください
- `.fvm` ディレクトリはバージョン管理に含める必要があります
