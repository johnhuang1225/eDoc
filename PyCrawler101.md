
##安裝開發環境
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
