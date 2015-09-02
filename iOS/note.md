

## View
- `UIView`的指定初始化方法為`initWithFrame`
- `UIView`屬性
  * `frame`：`CGRect`結構體。`CGRect`包含兩個結構體:`orgin:CGPoint` `size:CGSize`。**定義在父視圖的座標系統**
  * `bounds`：**定義在視圖自己的座標系統裡**
  * 對大部分視圖來說，bounds的大小通常就是視圖的範圍，也就是frame的size屬性。但對某些類別來說就不成立了，譬如UIScrollView，它的範圍超出實際可見的螢幕大小。
  * [frame and bounds參考](http://sourcecodemania.com/views-and-drawing-iphone-development/)

![Image](http://sourcecodemania.com/wp-content/uploads/2012/08/frame-and-bounds.jpg)

- [UIKit Function Reference](https://developer.apple.com/library/ios/documentation/UIKit/Reference/UIKitFunctionReference/)


## ViewController
- `UIViewController`的指定初始化方法為`initWithNibName:bundle:`

