# install_asciidoctor-pdf

asciidoctor-pdfをインストールするためのbatファイル。Ruby2.7／3.0／3.1系、x64ビットWindows用。

asciidoctor-pdf-cjk対応版は、上部のtagsの「For_asciidoctor-pdf-cjk」を参考にしてください。

## batファイルの使い方

1. [こちら](https://rubyinstaller.org/downloads/)から、Ruby2.7／3.0／3.1系いずれかのx64ビットWindows用のインストーラをダウンロードします。(+Devkitじゃない方でOKです)<br><br>
1. batファイルのあるフォルダにRubyのインストーラをコピーします。<br><br>
1. すでにインストールされているRubyは必ずアンインストールし、残ったフォルダは削除してください。<br><br>
1. Proxyを設定する時は、「http_proxy.txt」と「https_proxy.txt」に`http://プロキシのアドレス:ポート番号`のように入力してください。書式は以下の通りです。`http://`を付け忘れないこと。また、`http://user:password@・・・`とするとエラーになるようです。<br><br>
1. 「1_Install_Ruby_x64.bat」 ⇒ 「2_Install_Modules.bat」 ⇒ 「3_Install_Fonts.bat」の順で実行します。

## RunMultipleBatFiles.exeでのインストール方法

RunMultipleBatFiles.exeは複数のバッチファイル（もしくは1行DOSコマンド）を実行するアプリケーションです。

1. [こちら](https://rubyinstaller.org/downloads/)から、Ruby2.7／3.0／3.1系いずれかのx64ビットWindows用のインストーラをダウンロードします。(+Devkitじゃない方でOKです)<br><br>
1. batファイルのあるフォルダにRubyのインストーラをコピーします。<br><br>
1. すでにインストールされているRubyは必ずアンインストールし、残ったフォルダは削除してください。<br><br>
1. RunMultipleBatFiles.exeを起動します。<br><br>
1. Proxyをsっていする時は、Settingsタブのhttp_proxyとhttps_proxyを`http://プロキシのアドレス:ポート番号`のように設定してください。<br><br>
1. [Run]でインストールが開始します。

フォントをダウンロードするのは時間がかかります。固まったように見えますがしばらくお待ちください。
