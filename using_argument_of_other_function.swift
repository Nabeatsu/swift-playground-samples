import UIKit

// デフォルト引数で他の引数の値を使う時のワークアラウンド

//func of(size: CGFloat, defaultFont: UIFont = UIFont.systemFont(ofSize: size)) -> UIFont {
//    return UIFont(name: "deprecatble Font", size: size) ?? defaultFont
//}
// Use of unresolved identifier 'size'

typealias FontFactory = (_ size: CGFloat) -> UIFont
func of(size: CGFloat, defaultFont factory: FontFactory) -> UIFont {
    return UIFont(name: "deprecatable font", size: size) ?? factory(size)
}
