# 初期化されているかチェック
function mofu:init/check

# アクションバーに表示するメッセージ
title @s[tag=muteki,tag=!debug] actionbar [{"text": "無敵モード!!","color": "red","bold": true}]
title @s[tag=!muteki] actionbar [{"text": ""}]

# デバッグモード
title @s[tag=debug] actionbar [{"text": "デバッグモード中","color": "red","bold": true}]
title @s[tag=!debug] actionbar [{"text": ""}]
function mofu:debugmode/main

# テレポート関係
function mofu:gimmick/teleport/main
