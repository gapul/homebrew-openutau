# homebrew-openutau

[OpenUtau](https://www.openutau.com/) の非公式 Homebrew tap です。

GitHub Actions により毎日自動で最新リリースに追従します。

## インストール

```bash
brew tap gapul/openutau
brew install --cask openutau
```

## アップデート

```bash
brew update
brew upgrade --cask openutau
```

## アンインストール

```bash
brew uninstall --cask openutau
brew untap gapul/openutau
```

## 詳細

| 項目 | 内容 |
|------|------|
| 対応アーキテクチャ | Apple Silicon (arm64) / Intel (x86_64) |
| 対応 macOS | Monterey 以降 |
| ダウンロード元 | [stakira/OpenUtau](https://github.com/stakira/OpenUtau) 公式リリース |
| 自動更新 | 毎日 JST 15:00 に最新リリースを確認 |
| 検疫解除 | インストール・アップデート後に自動で `xattr -rc` を実行 |

## 免責事項

このtapはOpenUtauの非公式パッケージです。OpenUtau本体に関する問題は [公式リポジトリ](https://github.com/stakira/OpenUtau/issues) へご報告ください。
