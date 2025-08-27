
import SwiftUI

struct ExploreView:View {
    var body: some View {
        NavigationStack {
            VStack {
                SearchAndFilterBar()
                ScrollView {
                    
                    LazyVStack {
                        ForEach(0..<20,id:\.self) {
                            
                            listing in ListingItemView()
                                .frame(height: 400)
                                .clipShape(RoundedRectangle(cornerRadius: 10))
                        }
                    }
                    .padding()
                }
            }
        }
    }
}

#Preview {
    ExploreView()
}
