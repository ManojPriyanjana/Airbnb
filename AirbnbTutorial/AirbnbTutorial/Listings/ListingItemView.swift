import SwiftUI

struct ListingItemView: View {
    var body: some View {
        
        var images = [
            "01",
            "02",
            "03",
            "4",
            
        ]
        VStack(spacing:8){
            TabView{
                ForEach(images,id: \.self){
                    image in Image (image)
                        
                        .resizable()
                        .scaledToFit()
                        
                }
            }
                .frame(height:320)
                .clipShape(RoundedRectangle(cornerRadius: 10))
                .tabViewStyle(.page)
            //listing details
            
            HStack(alignment: .top){
                //details
                VStack(alignment:.leading){
                    Text("Miami, florida")
                        .fontWeight(.semibold)
                    Text("12 mi away")
                        .foregroundStyle(.secondary)
                    Text("Nov 3 -10")
                        .foregroundStyle(.secondary)
                    Text("$667 night")
                        .foregroundStyle(.secondary)
                    
                    HStack(spacing:4){
                        Text("$567").fontWeight(.semibold)
                        Text("night")
                    }
                    
                }
                Spacer()
                //rating
                
                HStack{
                    Image(systemName: "star.fill")
                    Text("4.86")
                }
            }.font(.footnote)
        }
        
    }
}

#Preview {
    ListingItemView()
}
