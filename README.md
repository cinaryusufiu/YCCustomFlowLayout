# YCCustomFlowLayout

## SCREENSHOT

![YCCustomFlowLayout](https://github.com/cinaryusufiu/YCCustomLayout/blob/master/YCCustomLayout/2pe7um.gif) 

![YCCustomFlowLayout2](https://github.com/cinaryusufiu/YCCustomLayout/blob/master/YCCustomLayout/2pe7xg.gif)

## Installation

YCCustomFlowLayout is available through [CocoaPods](https://cocoapods.org/). To install it, simply add the following line to your Podfile:

```sh
pod 'YCCustomFlowLayout'

```

## YCCustomLayoutDatasource

```swift

    //MARK: YCCustomFlowLayoutDatasource
    func numberOfColomns() -> Int {
        return 3
    }
    
    func cellPadding() -> CGFloat {
        return 4
    }
    
    func collectionView(_ collectionView: UICollectionView, heightForItemAtIndexPath indexPath:IndexPath) -> CGFloat {
        return CGFloat(itemHeight[indexPath.row])
    }

```

	 
## Authors

* **Yusuf Çınar** - [https://github.com/cinaryusufiu](https://github.com/cinaryusufiu)

## License

This project is licensed under the MIT License - see the [LICENSE.md](https://github.com/cinaryusufiu/YCCustomFlowLayout/blob/master/LICENSE) file for details

