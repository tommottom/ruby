変更ファイルをコミットしたい時編

Gitの基本中の基本　変更したファイルを「addしてcommit」

なんでわざわざaddするの？直接commitすればいいじゃん

でもさ、「Git」がそういう仕組みになっているから,,。


あとGitにはファイルの状態を保存する場所がいくつかあります。

・ワーキングツリー
いま作業しているところ
・インデックス
コミットするためのファイルを登録する場所
・ローカルリポジトリ
リモートリポジトリに送るためのコミットを記録する場所
・リモートリポジトリ
複数人で共有するためのリポジトリ

あと今回はコミットするファイル一つだけだしaddめんどーー

git commit -a commit_test.rb
というふうに-aオプションをつけてcommitしましょう
こうすることでaddとcommitを同時にしてくれます。

覚えよう。


参考URL
http://kray.jp/blog/git-why-explanation/