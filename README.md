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

### Customization

```swift
// Custom color
LaurelAnimatedView(foregroundStyle: .blue.gradient)

// Gold laurels, taller, no replay button
LaurelAnimatedView(foregroundStyle: .yellow, height: 200, showReplayButton: false)

// Single laurel (no mirror)
LaurelAnimatedView(mirrored: false)

// Faster animation
LaurelAnimatedView(speed: 2.0)

// Content between the laurels
LaurelAnimatedView {
    Text("Winner")
        .font(.title)
        .foregroundStyle(.white)
}

// Full control
LaurelAnimatedView(
    foregroundStyle: .mint.gradient,
    height: 180,
    spacing: 40,
    speed: 1.5,
    mirrored: true,
    showReplayButton: false,
    backgroundColor: .white
) {
    Image(systemName: "star.fill")
        .font(.largeTitle)
}
```

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `foregroundStyle` | `ShapeStyle` | `.orange.gradient` | Laurel color or gradient |
| `height` | `CGFloat` | `150` | Frame height of the wreath |
| `spacing` | `CGFloat` | `30` | Gap between left and right laurels |
| `speed` | `Double` | `1.0` | Animation speed multiplier (2.0 = twice as fast) |
| `mirrored` | `Bool` | `true` | Show mirrored pair or single laurel |
| `showReplayButton` | `Bool` | `true` | Show/hide the replay button |
| `backgroundColor` | `Color` | `.black` | Background color |
| `content` | `ViewBuilder` | — | Optional view placed between the laurels |

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
