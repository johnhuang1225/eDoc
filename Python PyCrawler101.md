
##安裝開發環境
### window
1 安裝Anaconda，[Anaconda](http://continuum.io/downloads)
  - 修改PATH，增加`C:\Anaconda\;C:\Anaconda\Scripts`
  
2 下載mimetypes.py
  - 複製mimetypes.py至C:\Anaconda\Lib
  - 該路徑原本就有一個minetypes.py，可先修改原本的monetypes.py檔名
  
3 取得get-pip.py
  - 下載pip，[pip](https://pip.pypa.io/en/stable/installing/)，取得`get-pip.py`檔案
  - 直接將`get-pip.py`複製到`C:\Anaconda`

4 更新最新pip
  - Anaconda原本已有pip，使用get-pip.py，可以取得最新pip
  - 開啟cmd，移至`C:\Anaconda`下
  - `C:\Anaconda> python get-pip.py`

5 用pip安裝其他套件
  - `C:\Anaconda> pip install jsonpointer`
  
6 安裝ipython
  - `C:\Anaconda> git clone https://github.com/ipython/ipython.git`
  - `C:\Anaconda> cd ipython`
  - `C:\Anaconda\ipython> python setup.py install`
  - `C:\Anaconda\ipython> pip install jupyter`
  
7 啟動ipython
  `> ipython notebook`


### MAC
[參考](https://chloechen727.wordpress.com/2015/07/26/mac-os-x-plus-python-2-7-and-3-4/)
#### 透過Homebrew安裝
1 更新Homebrew，之後安裝pyenv
```
> brew update
> brew install pyenv
```

2 安裝完後，在`~/.bash_profile`增加一行
```
> echo 'eval "$(pyenv init -)"' >> ~/.bash_profile
```
===
### pyenv使用
- 查看能夠安裝的版本
`> pyenv install --list`

- 查看已安裝的版本
`> pyenv versions`

- 查看目前版本
`> pyenv version`

- 安裝anaconda-2.3.0
`> pyenv install anaconda-2.3.0`

- 切換到anaconda-2.3.0
`> pyenv global anaconda-2.3.0`

- 安裝套件pyquery
`> pip install pyquery`






