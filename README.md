# install_asciidoctor-pdf

asciidoctor-pdfをインストールするためのbatファイル。Ruby2.7／3.0／3.1系、x64ビットWindows用。

asciidoctor-pdf-cjk対応版は、上部のtagsの「For_asciidoctor-pdf-cjk」を参考にしてください。

## batファイルの使い方

* [こちら](https://rubyinstaller.org/downloads/)から、Ruby2.7／3.0／3.1系いずれかのx64ビットWindows用のインストーラをダウンロードします。(+Devkitじゃない方でOKです)
* 「1_Install_Ruby30_x64.bat」のあるフォルダにRubyのインストーラをコピーします。
* Proxyを設定する時は、「http_prosy.txt」と「https_proxy.txt」に入力してください。書式は以下の通りです。`http://`を付け忘れないこと。また、`http://user:password@・・・`とするとエラーになるようです。

```
http://プロキシのアドレス:ポート番号
```

* すでにインストールされているRubyは必ずアンインストールし、残ったフォルダは削除してください。
* 「1_Install_Ruby_x64.bat」 ⇒ 「2_Install_Modules.bat」 ⇒ 「3_Install_Fonts.bat」の順で実行します。（フォルダ名はデフォルト設定で）