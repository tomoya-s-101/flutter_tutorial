# flutter_app

A new Flutter application.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://flutter.dev/docs/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://flutter.dev/docs/cookbook)

For help getting started with Flutter, view our
[online documentation](https://flutter.dev/docs), which offers tutorials,
samples, guidance on mobile development, and a full API reference.

### ソースの自動生成機能
当プロジェクトではソースの自動生成を使用しているため、実行前に下記コマンドを実行する必要があります。

$ flutter packages pub run build_runner build

2回目以降は、生成済みのコードとのコンフリクトを避けるために、下記のように引数を追加する必要があります。

$ flutter packages pub run build_runner build --delete-conflicting-outputs