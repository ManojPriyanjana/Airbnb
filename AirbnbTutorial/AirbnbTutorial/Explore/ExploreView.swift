
import SwiftUI

struct ExploreView:View {
    var body: some View {
        NavigationStack {
            ScrollView {
                LazyVStack {
                    ForEach(0..<20,id:\.self) {
                        listing in Rectangle()
                            .frame(height: 400)
                            .clipShape(RoundedRectangle(cornerRadius: 10))
                    }
                }
                .padding(20)
            }
        }
    }
}

#Preview {
    ExploreView()
}
