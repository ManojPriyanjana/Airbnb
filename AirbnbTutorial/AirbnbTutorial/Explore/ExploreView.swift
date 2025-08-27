
import SwiftUI

struct ExploreView:View {
    var body: some View {
        NavigationStack {
            VStack {
                SearchAndFilterBar()
                ScrollView {
                    
                    LazyVStack {
                        ForEach(0..<20,id:\.self) {
                            listing in NavigationLink(value:listing){
                                ListingItemView()
                                    .frame(height:400)
                                    .clipShape(RoundedRectangle(cornerRadius: 20))
                            }
                        }
                    }
                    .padding()
                }
            }.navigationDestination(for:Int.self){listing in
                
                Text("listing deatail view ..")
                
               
                
            }
        }
    }
}

#Preview {
    ExploreView()
}
