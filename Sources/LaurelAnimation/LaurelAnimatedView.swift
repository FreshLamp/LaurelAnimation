import SwiftUI

// MARK: - Layer Group (pairs two leaves, animates together)

public struct LaurelLayerGroup: View {
    let index: Int
    let delay: Double
    let speed: Double
    var extraLayer: Int? = nil

    @State private var isVisible = false

    public init(index: Int, delay: Double, speed: Double = 1.0, extraLayer: Int? = nil) {
        self.index = index
        self.delay = delay
        self.speed = speed
        self.extraLayer = extraLayer
    }

    public var body: some View {
        ZStack {
            LaurelShape(layer: index)
            LaurelShape(layer: index + 1)
            if let extraLayer {
                LaurelShape(layer: extraLayer)
            }
        }
        .aspectRatio(0.49, contentMode: .fit)
        .scaleEffect(isVisible ? 1 : 0)
        .opacity(isVisible ? 1 : 0)
        .blur(radius: isVisible ? 0 : 5)
        .onAppear {
            DispatchQueue.main.asyncAfter(deadline: .now() + delay / speed) {
                withAnimation(.spring(response: 0.5 / speed, dampingFraction: 0.6)) {
                    isVisible = true
                }
            }
        }
        .onDisappear {
            isVisible = false
        }
    }
}

// MARK: - Full Animated Laurel

public struct LaurelAnimatedView<S: ShapeStyle, Content: View>: View {
    private let foregroundStyle: S
    private let height: CGFloat
    private let spacing: CGFloat
    private let speed: Double
    private let mirrored: Bool
    private let showReplayButton: Bool
    private let backgroundColor: Color
    private let content: Content?

    @State private var replayTrigger = 0
    @State private var isShown = false

    public init(
        foregroundStyle: S,
        height: CGFloat = 150,
        spacing: CGFloat = 30,
        speed: Double = 1.0,
        mirrored: Bool = true,
        showReplayButton: Bool = true,
        backgroundColor: Color = .black,
        @ViewBuilder content: () -> Content
    ) {
        self.foregroundStyle = foregroundStyle
        self.height = height
        self.spacing = spacing
        self.speed = speed
        self.mirrored = mirrored
        self.showReplayButton = showReplayButton
        self.backgroundColor = backgroundColor
        self.content = content()
    }

    private var laurelStack: some View {
        ZStack {
            LaurelLayerGroup(index: 11, delay: 0.0, speed: speed, extraLayer: 13)
            LaurelLayerGroup(index: 9, delay: 0.1, speed: speed)
            LaurelLayerGroup(index: 7, delay: 0.2, speed: speed)
            LaurelLayerGroup(index: 5, delay: 0.3, speed: speed)
            LaurelLayerGroup(index: 3, delay: 0.4, speed: speed)
            LaurelLayerGroup(index: 1, delay: 0.5, speed: speed)
        }
    }

    public var body: some View {
        VStack(spacing: 30) {
            Spacer()

            if isShown {
                HStack(spacing: spacing) {
                    laurelStack

                    if let content {
                        content
                    }

                    if mirrored {
                        laurelStack
                            .scaleEffect(x: -1, y: 1)
                    }
                }
                .frame(height: height)
                .foregroundStyle(foregroundStyle)
                .id(replayTrigger)
            }

            Spacer()

            if showReplayButton {
                VStack(spacing: 16) {
                    Button {
                        isShown = false
                        Task {
                            try? await Task.sleep(for: .milliseconds(100))
                            replayTrigger += 1
                            isShown = true
                        }
                    } label: {
                        Label("Replay", systemImage: "arrow.counterclockwise")
                            .font(.headline)
                            .frame(maxWidth: .infinity)
                    }
                    .buttonStyle(.borderedProminent)
                    .tint(.white.opacity(0.15))
                }
                .padding(.horizontal, 24)
                .padding(.bottom, 40)
            }
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(backgroundColor)
        .preferredColorScheme(.dark)
        .onAppear {
            isShown = true
        }
    }
}

// MARK: - Convenience Inits

// No content, custom style
public extension LaurelAnimatedView where Content == EmptyView {
    init(
        foregroundStyle: S,
        height: CGFloat = 150,
        spacing: CGFloat = 30,
        speed: Double = 1.0,
        mirrored: Bool = true,
        showReplayButton: Bool = true,
        backgroundColor: Color = .black
    ) {
        self.foregroundStyle = foregroundStyle
        self.height = height
        self.spacing = spacing
        self.speed = speed
        self.mirrored = mirrored
        self.showReplayButton = showReplayButton
        self.backgroundColor = backgroundColor
        self.content = nil
    }
}

// No content, default style
public extension LaurelAnimatedView where S == AnyGradient, Content == EmptyView {
    init(
        height: CGFloat = 150,
        spacing: CGFloat = 30,
        speed: Double = 1.0,
        mirrored: Bool = true,
        showReplayButton: Bool = true,
        backgroundColor: Color = .black
    ) {
        self.init(
            foregroundStyle: Color.orange.gradient,
            height: height,
            spacing: spacing,
            speed: speed,
            mirrored: mirrored,
            showReplayButton: showReplayButton,
            backgroundColor: backgroundColor
        )
    }
}

// Default style with content
public extension LaurelAnimatedView where S == AnyGradient {
    init(
        height: CGFloat = 150,
        spacing: CGFloat = 30,
        speed: Double = 1.0,
        mirrored: Bool = true,
        showReplayButton: Bool = true,
        backgroundColor: Color = .black,
        @ViewBuilder content: () -> Content
    ) {
        self.init(
            foregroundStyle: Color.orange.gradient,
            height: height,
            spacing: spacing,
            speed: speed,
            mirrored: mirrored,
            showReplayButton: showReplayButton,
            backgroundColor: backgroundColor,
            content: content
        )
    }
}
