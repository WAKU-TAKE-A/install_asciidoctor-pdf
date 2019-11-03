# install_asciidoctor-pdf

asciidoctor-pdfをインストールするためのbatファイル。Ruby2.6系、x64ビットWindows用。

asciidoctor-pdfは「1.5.0.beta.7」、asciidoctor-pdf-cjk-kai_gen_gothicは「0.1.1」をインストールします。

## batファイルの使い方

* [こちら](https://rubyinstaller.org/downloads/)から、Ruby2.6系、x64ビットWindows用のインストーラをダウンロードします。
* 「1_Install_Ruby26_x64.bat」のあるフォルダにRubyのインストーラをコピーします。
* Proxyを設定する時は、「http_prosy.txt」と「https_proxy.txt」に入力してください。書式は以下の通りです。

```
http://プロキシのアドレス:ポート番号
```

* すでにインストールされているRubyはアンインストールし、「C:\Ruby26-x64」フォルダは削除してください。
* 「1_Install_Ruby26_x64.bat」 ⇒ 「2_Install_Modules.bat」 ⇒ 「3_Install_Fonts.bat」の順で実行します。
