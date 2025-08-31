import SwiftUI

struct CoffeeItemView: View {
    let coffee: Item
    

    // お気に入り情報は状態が変わるため、@Stateのおまじない
    @State var isFavorite: Bool = false
    
    var body: some View {
        VStack(alignment: .leading, spacing: 0) {
            AsyncImage(url: URL.init(string: coffee.image)!) { phase in
                switch phase {
                case .empty:
                    ProgressView()
                case .success(let image):
                    image
                        .resizable()
                        .scaledToFill()
                case .failure:
                    Image(systemName: "photo")
                        .imageScale(.large)
                        .foregroundStyle(.secondary)
                @unknown default:
                    EmptyView()
                }
            }
            .frame(height: 200)
            .frame(maxWidth: .infinity)
            .contentShape(.rect)
            
            VStack(alignment: .leading, spacing: 10) {
                HStack {
                    Text(coffee.name)
                        .font(.title)
                    Spacer()
                    Button(action: {
                        isFavorite.toggle()
                    }) {
                        Image(systemName: isFavorite ? "star.fill" : "star")
                    }
                    
                }
//                Text(coffee.type)
//                    .font(.subheadline)
//                    .foregroundStyle(.secondary)
//                HStack {
//                    ForEach(coffee.ingredients, id: \.self) { ingredient in
//                        Text(ingredient)
//                            .italic()
//                            .foregroundStyle(.secondary)
//                    }
//                }
//                .frame(maxWidth: .infinity, alignment: .trailing)
            }
            .foregroundColor(.white)
            .padding()
            .background(Color.black.opacity(0.5))
            .background(.ultraThinMaterial)
        }
        .cornerRadius(10)
    }
}

//#Preview {
//    let coffee1 = OkasinotorikoResponse(
//        id: 1,
//        title: "Black Coffee",
//        description: "Svart kaffe är så enkelt som det kan bli med malda kaffebönor dränkta i hett vatten, serverat varmt.",
//        ingredients: ["Coffee"],
//        image: URL(string:https://sysbird.jp/toriko/webapi/)!
//    )
//}

