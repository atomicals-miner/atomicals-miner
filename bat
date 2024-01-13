@echo off

:: 钱包文件路径，如 .\wallets  表示同目录下的wallets文件夹
set waller_dir=.\wallets

::固定手续费、手续费上限,设置0为关闭,两个至少设置一个.如果两个都设置则按固定费率执行

::打包手续费上限 ,satsbyte
set max_fee=60
::固定打包手续费 ,satsbyte
set fee=60
::要打的ARC20名称
set ticker=sophon

::要打的次数 如果打多次 请确保手续费充足
set times=1

atomicals-miner mint-dft --wallet-dir %waller_dir% --max-fee %max_fee% --fee %fee% --ticker %ticker% --times %times%
pause
