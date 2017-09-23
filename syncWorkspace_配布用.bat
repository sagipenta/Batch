echo off
REM =================================================
REM 【Perforceの任意のディレクトリを選択的に更新するバッチです】
REM
REM スタートアップにショートカットを作っておくと、
REM PC起動時にバッチが自動起動してP4の更新を掛けてくれるので楽です
REM
REM スタートアップの場所↓
REM C:\Users\[アカウント名]\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup
REM
REM       　何かありましたら、第3BD(大阪)企画の斎藤までご質問ください
REM
REM         Tres-J SQEX/斎藤成紀 2017/05/25
REM =================================================
echo on

@::P4にパスを通す
PATH=C:\Program Files\Perforce,%PATH%

@::P4_OPT変数にワークスペース、ユーザー名、Cドライブのワークスペースを設定
@::例) SET P4_OPT=-p "p4p-tres02:1999" -u "saishige" -c "TresMain_saishige_PC4113_8761"
SET P4_OPT=-p [サーバ名:ポート番号] -u [ユーザー名] -c [Cドライブのワークスペース]

@::Cドライブのフォルダを更新
@::例) p4 %P4_OPT% sync "c:\Tres\UE4\TresMain\..."
p4 %P4_OPT% sync [ワークスペースとして設定してあるフォルダ\...]

pause
