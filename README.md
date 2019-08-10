# 🏡 Cully
A Swift-based DSL to make Auto Layout friendlier.

## Motivation

Auto Layout has gotten nice, but it can still be pretty verbose. Cully provides handy lil' helpers to reduce the amount of boilerplate code needed to layout views and dramatically improves the readability of that code.

Let's say we want to position a fixed-size `UIView` in the center of another `UIView`.

```swift
// With `NSLayoutConstraint`s

let box = UIView()
view.addSubview(box)
box.translatesAutoresizingMaskIntoConstraints = false
NSLayoutConstraint(item: box, attribute: .centerX, relatedBy: .equal, toItem: view, attribute: .centerX, multiplier: 1.0, constant: 0).isActive = true
NSLayoutConstraint(item: box, attribute: .centerY, relatedBy: .equal, toItem: view, attribute: .centerY, multiplier: 1.0, constant: 0).isActive = true
NSLayoutConstraint(item: box, attribute: .width, relatedBy: .equal, toItem: nil, attribute: .notAnAttribute, multiplier: 1.0, constant: 100).isActive = true
NSLayoutConstraint(item: box, attribute: .height, relatedBy: .equal, toItem: nil, attribute: .notAnAttribute, multiplier: 1.0, constant: 100).isActive = true
```

*Woof* – that's a lot of parse. The same layout with Cully:

```swift
// With Cully

let box = UIView()
view.addSubview(box)
box.constrain(width: 100, height: 100)
box.constrain(centerIn: view)
```

That's friendlier.

- Works directly with native types (`NSLayoutConstraint`) and retains the full-power of the native API
- Adds just enough syntactic sugar to be useful, but not so much as to be overwhelming
- Reads more naturally than the native API
- [Saves some time](https://twitter.com/BigZaphod/status/1149876955879268354)

Yes, one could use `NSLayoutAnchors`, and yes, perhaps when the world is all **SwiftUI** this becomes less relevant, and yes, _____________________, but this is the house I built and I intend on living in it. 🏡

## Usage

```swift
import Cully
```

By default, Cully sets the receiver view's `translatesAutoresizingMaskIntoConstraints` to `false` and activates the requested constraint.

### Adding Constraints

Methods for adding constraints are namespaced `constrain(...)` on `UIView`.

```swift
myView.constrain(bottom: .equal, .top, of: someView)
```

Single constraint method names mirror `NSLayoutContraint.Attribute`s. They all return a single `NSLayoutConstraint`. Some special case convenience helpers that require creating more than one constraint return `[NSLayoutConstraint]`.

```swift
// Singly-activated `NSLayoutConstraint`s
let leftConstraint = myView.constrain(left: .equal, .left, of: someView)
let baselineConstraint = myView.constrain(lastBaseline: .lessThanOrEqual, .lastBaseline, of: someView)

// An array of `NSLayoutConstraint`s
let dimensionConstraints = myView.constrain(width: 50, height: 80)
```

Methods for accessing and modifying `NSLayoutConstraints` are namespaced `constraint(...)` and `constraints(...)`  on `UIView`.

```swift
myView.constraints(for [.width, .height])
myView.constraints(activate: trailingConstraint)
```

`KeyedConstraints` is a typealias representing a Dictionary of `NSLayoutConstraint`s keyed by `NSLayoutConstraint.Attribute`s on `Collection`.

```swift
let keyedConstraints = myView.constraints.keyed
keyedConstraints[.width]?.constant = 150
```

You can also easily access the native `NSLayoutConstraint` initialization API, as well as a helper on `UIView` to activate and deactivate constraints.

```swift
let topConstraint = myView.constrain(.top, .equal, .top, of: view, multiplier: 1.0, constant: 100, isActive: false)
...
myView.constraints(activate: topConstraint)
```

## Installation

Give [Carthage](https://github.com/Carthage/Carthage) a try, how 'bout?

1. Add the following to your `Cartfile`:

    ```swift
    github "staykids/Cully" "1.0"
    ```

2. Follow the [Carthage instructions for adding a framework to your project](https://github.com/Carthage/Carthage#adding-frameworks-to-an-application). 

## Improvements

Cully is opinionatedly tailored to my own needs and uses, but feel free to open a pull request if you think of something cool, notice an issue, or feel something's missing. 
