# install_asciidoctor-pdf

ruby、asciidoctor-pdf関連のモジュール、フォントをインストールするするためのセットです。

Ruby x64ビットWindows用です。

asciidoctor-pdf-cjk対応版は、上部のtagsの「For_asciidoctor-pdf-cjk」を参考にしてください。

昔のbatファイル方式のインストールは、上部のtagsの「bat_file」を参考にしてください。

## RunMultipleBatFiles.exeによるインストール方法

RunMultipleBatFiles.exeは複数のバッチファイル（もしくは1行DOSコマンド）を実行するアプリケーションです。

1. [こちら](https://rubyinstaller.org/downloads/)から、Ruby x64ビットWindows用のインストーラをダウンロードします。(+Devkitじゃない方でOKです)<br><br>
1. batファイルのあるフォルダにRubyのインストーラをコピーします。<br><br>
1. すでにインストールされているRubyは必ずアンインストールし、残ったフォルダは削除してください。<br><br>
1. RunMultipleBatFiles.exeを起動します。<br><br>
1. Proxyを設定する時は、SettingsタブのVariableに「http_proxy」と「https_proxy」を、Valueに`http://プロキシのアドレス:ポート番号`を設定してください。`http://`を付け忘れないことに注意してください。<br><br>
1. [Run]でインストールが開始します。

フォントをダウンロードするのは時間がかかります。固まったように見えますがしばらくお待ちください。