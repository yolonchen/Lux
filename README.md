# Lux

[![CI Status](https://img.shields.io/travis/ts-cyl/Lux.svg?style=flat)](https://travis-ci.org/ts-cyl/Lux)
[![Version](https://img.shields.io/cocoapods/v/Lux.svg?style=flat)](https://cocoapods.org/pods/Lux)
[![License](https://img.shields.io/cocoapods/l/Lux.svg?style=flat)](https://cocoapods.org/pods/Lux)
[![Platform](https://img.shields.io/cocoapods/p/Lux.svg?style=flat)](https://cocoapods.org/pods/Lux)

## Example

To run the example project, clone the repo, and run `pod install` from the Example directory first.

## Requirements

## Installation

Lux is available through [CocoaPods](https://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod 'Lux'
```

## Author

yulong.chen, ts_cyl@163.com

## License

Lux is available under the MIT license. See the LICENSE file for more info.

## Usege

```
let str = "这是一个测试字符串呀,yellow,red,想要很长loooooooooooooog很长，能够换行，呵呵呵"
let attr = str.lux.makeAttributes { (maker) in
    maker.foregroundColor(color: .orange).full()
    maker.foregroundColor(color: .yellow).range(r: str.range(of: "yellow")!)
    maker.foregroundColor(color: .red).font(f: UIFont.boldSystemFont(ofSize: 20)).range(r: str.range(of: "red")!)
    maker.backgroundColor(color: .cyan).full()
    maker.backgroundColor(color: .magenta).range(r: str.range(of: "yellow")!)
    maker.ph.line(space: 10).full()
}
```
