import SwiftUI

enum Theme {
    static let accent = Color(hex: "#4CAF50")
    static let background = Color(hex: "#0D1710")
    static let ink = Color(hex: "#EAF5EC")
    static let muted = Color(hex: "#8FBF95")

    static func font(_ size: CGFloat, weight: Font.Weight = .regular) -> Font {
        .system(size: size, weight: weight, design: .rounded)
    }

    static let cardCorner: CGFloat = 16
}

extension Color {
    init(hex: String) {
        let s = hex.trimmingCharacters(in: CharacterSet.alphanumerics.inverted)
        var v: UInt64 = 0
        Scanner(string: s).scanHexInt64(&v)
        let r = Double((v >> 16) & 0xFF) / 255.0
        let g = Double((v >> 8) & 0xFF) / 255.0
        let b = Double(v & 0xFF) / 255.0
        self.init(red: r, green: g, blue: b)
    }
}
