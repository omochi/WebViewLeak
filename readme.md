# あばうと

このプログラムを実行した状態で、
スクロールビューをドラッグし続けると、メモリリークになって落ちる。

生成/除去を繰り返しているUIWebViewをUIViewに変えたり、
スクロールビューをタッチしなければ症状が生じない。

