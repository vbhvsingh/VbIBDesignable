import UIKit

/// A view backed by `CAGradientLayer`. The gradient tracks `bounds` automatically,
/// so there is no sublayer to resize and nothing accumulates on redraw.
@IBDesignable
open class GradientView: UIView {
    @IBInspectable public var startColor: UIColor = .clear { didSet { applyGradient() } }
    @IBInspectable public var endColor: UIColor = .clear { didSet { applyGradient() } }
    /// Unit-space start point. Default is a left-to-right gradient.
    @IBInspectable public var startPoint: CGPoint = CGPoint(x: 0, y: 0.5) { didSet { applyGradient() } }
    @IBInspectable public var endPoint: CGPoint = CGPoint(x: 1, y: 0.5) { didSet { applyGradient() } }

    override open class var layerClass: AnyClass { CAGradientLayer.self }

    private var gradientLayer: CAGradientLayer { layer as! CAGradientLayer }

    public override init(frame: CGRect) {
        super.init(frame: frame)
        applyGradient()
    }

    public required init?(coder: NSCoder) {
        super.init(coder: coder)
        applyGradient()
    }

    open override func prepareForInterfaceBuilder() {
        super.prepareForInterfaceBuilder()
        applyGradient()
    }

    private func applyGradient() {
        gradientLayer.colors = [startColor.cgColor, endColor.cgColor]
        gradientLayer.startPoint = startPoint
        gradientLayer.endPoint = endPoint
    }
}

/// A button with a gradient background. Same behaviour as `GradientView`.
@IBDesignable
open class GradientButton: UIButton {
    @IBInspectable public var startColor: UIColor = .clear { didSet { applyGradient() } }
    @IBInspectable public var endColor: UIColor = .clear { didSet { applyGradient() } }
    @IBInspectable public var startPoint: CGPoint = CGPoint(x: 0, y: 0) { didSet { applyGradient() } }
    @IBInspectable public var endPoint: CGPoint = CGPoint(x: 1, y: 0) { didSet { applyGradient() } }

    override open class var layerClass: AnyClass { CAGradientLayer.self }

    private var gradientLayer: CAGradientLayer { layer as! CAGradientLayer }

    public override init(frame: CGRect) {
        super.init(frame: frame)
        applyGradient()
    }

    public required init?(coder: NSCoder) {
        super.init(coder: coder)
        applyGradient()
    }

    open override func prepareForInterfaceBuilder() {
        super.prepareForInterfaceBuilder()
        applyGradient()
    }

    private func applyGradient() {
        gradientLayer.colors = [startColor.cgColor, endColor.cgColor]
        gradientLayer.startPoint = startPoint
        gradientLayer.endPoint = endPoint
    }
}
