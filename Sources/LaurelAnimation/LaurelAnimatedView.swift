import SwiftUI

// MARK: - Layer Group (pairs two leaves, animates together)

public struct LaurelLayerGroup: View {
    let index: Int
    let delay: Double
    var extraLayer: Int? = nil

    @State private var isVisible = false

    public init(index: Int, delay: Double, extraLayer: Int? = nil) {
        self.index = index
        self.delay = delay
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
            DispatchQueue.main.asyncAfter(deadline: .now() + delay) {
                withAnimation(.spring(response: 0.5, dampingFraction: 0.6)) {
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

public struct LaurelAnimatedView: View {
    @State private var replayTrigger = 0
    @State private var isShown = false

    public init() {}

    private var laurelStack: some View {
        ZStack {
            LaurelLayerGroup(index: 11, delay: 0.0, extraLayer: 13)
            LaurelLayerGroup(index: 9, delay: 0.1)
            LaurelLayerGroup(index: 7, delay: 0.2)
            LaurelLayerGroup(index: 5, delay: 0.3)
            LaurelLayerGroup(index: 3, delay: 0.4)
            LaurelLayerGroup(index: 1, delay: 0.5)
        }
    }

    public var body: some View {
        VStack(spacing: 30) {
            Spacer()

            if isShown {
                HStack(spacing: 30) {
                    laurelStack

                    laurelStack
                        .scaleEffect(x: -1, y: 1)
                }
                .frame(height: 150)
                .foregroundStyle(.orange.gradient)
                .id(replayTrigger)
            }

            Spacer()

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
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(.black)
        .preferredColorScheme(.dark)
        .onAppear {
            isShown = true
        }
    }
}
