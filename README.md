# VbIBDesignable

Live-rendering layer properties for UIKit in Interface Builder. Set corner radius, border, shadow and gradients from the Attributes Inspector and see them in the storyboard, no code and no `layoutSubviews` override.

Swift 5.9, iOS 13+, tvOS 13+. Dependency free.

## Install

Xcode: **File → Add Package Dependencies** and paste:

```
https://github.com/vbhvsingh/VbIBDesignable
```

Or in `Package.swift`:

```swift
.package(url: "https://github.com/vbhvsingh/VbIBDesignable", from: "1.0.0")
```

## What you get

### `UIView` extension

Every `UIView` (and subclass) gains these `@IBInspectable` properties, which appear in the Attributes Inspector for any view in a storyboard or XIB:

| Property | Backed by |
|---|---|
| `cornerRadius` | `layer.cornerRadius` |
| `masksToBounds` | `layer.masksToBounds` |
| `borderWidth` | `layer.borderWidth` |
| `borderColor` | `layer.borderColor` |
| `shadowRadius` | `layer.shadowRadius` |
| `shadowOpacity` | `layer.shadowOpacity` |
| `shadowOffset` | `layer.shadowOffset` |
| `shadowColor` | `layer.shadowColor` |

They also work from code:

```swift
import VbIBDesignable

card.cornerRadius = 12
card.shadowColor = .black
card.shadowOpacity = 0.15
card.shadowOffset = CGSize(width: 0, height: 4)
```

### `GradientView` and `GradientButton`

Set the custom class in Identity Inspector, then pick `startColor`, `endColor`, `startPoint` and `endPoint` in Attributes Inspector. The gradient is the view's own layer (`layerClass` is `CAGradientLayer`), so it follows the view's bounds through rotation and Auto Layout with nothing to resize.

```swift
let header = GradientView()
header.startColor = .systemIndigo
header.endColor = .systemPink
header.startPoint = CGPoint(x: 0, y: 0)
header.endPoint = CGPoint(x: 1, y: 1)
```

## License

MIT. See [LICENSE](LICENSE).
