# LaurelAnimation

A SwiftUI package that renders an animated laurel wreath with staggered spring animations.

## Installation

In Xcode: **File > Add Package Dependencies** and paste:

```
https://github.com/FreshLamp/LaurelAnimation.git
```

## Usage

```swift
import LaurelAnimation

struct ContentView: View {
    var body: some View {
        LaurelAnimatedView()
    }
}
```

That's it — a mirrored pair of laurel wreaths with staggered leaf-by-leaf spring animations and a replay button.

### Individual Components

You can also use the building blocks directly:

```swift
// Single laurel wreath shape (all 13 leaves)
LaurelShape()

// Single leaf
LaurelShape(layer: 5)

// Animated layer group (pairs two leaves with spring animation)
LaurelLayerGroup(index: 1, delay: 0.3)
```

## Requirements

- iOS 16+ / macOS 13+
- Swift 5.9+
