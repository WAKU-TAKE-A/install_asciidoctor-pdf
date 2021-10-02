# install_asciidoctor-pdf

asciidoctor-pdfをインストールするためのbatファイル。Ruby2.7系、x64ビットWindows用。

## batファイルの使い方

* [こちら](https://rubyinstaller.org/downloads/)から、Ruby2.7系、x64ビットWindows用のインストーラをダウンロードします。(+Devkitじゃない方)
* 「1_Install_Ruby26_x64.bat」のあるフォルダにRubyのインストーラをコピーします。
* Proxyを設定する時は、「http_prosy.txt」と「https_proxy.txt」に入力してください。書式は以下の通りです。`http://`を付け忘れないこと。また、`http://user:password@・・・`とするとエラーになるようです。

```
http://プロキシのアドレス:ポート番号
```

* すでにインストールされているRubyはアンインストールし、残ったフォルダは削除してください。
* 「1_Install_Ruby26_x64.bat」 ⇒ 「2_Install_Modules.bat」 ⇒ 「3_Install_Fonts.bat」の順で実行します。