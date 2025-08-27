
import SwiftUI

struct SearchAndFilterBar: View {
    var body: some View {
        HStack {
           
            Image(systemName:"magnifyingglass")
            VStack(alignment: .leading,spacing: 2){
                Text("Where to?")
                    .font(.footnote)
                    .fontWeight(.semibold)
                Text("Anywhere - Any Week - Add guests")
                    .font(.caption)
                    .foregroundColor(.secondary)
            }
            Spacer()
            
            Button(action:{},label:{
                Image(systemName:"line.3.horizontal.decrease.circle")
                    .foregroundStyle(.black)
                
            })
          
        }
        .padding(.horizontal)
        .padding(.vertical,10)
        .overlay{
            Capsule()
                .stroke(Color.gray, lineWidth: 1)
                .foregroundStyle(Color(.blue))
                .shadow(color: .black.opacity(0.5),radius:2)
        }
        .padding()
    }
}


#Preview {
    SearchAndFilterBar()
}
