import SwiftUI

struct CoffeeListView: View {
    @State private var responses: [Item] = []
    
    var body: some View {
        NavigationStack {
            ScrollView {
                LazyVStack(spacing: 20) {
                    ForEach(responses) { response in
                        CoffeeItemView(coffee: response)
                    }
                }
                .padding(.vertical)
            }
            .navigationTitle("Coffees")
        }
        .task {
            do {
                responses = try await getCoffees()
            } catch {
                print("Failed to fetch coffees: \(error)")
            }
        }
    }
    
    func getCoffees() async throws -> [Item] {
        guard let url = URL(string: "https://www.sysbird.jp/webapi/?apikey=guest&format=json") else { return [] }
        let (data, response) = try await URLSession.shared.data(from: url)
        print(data)
        print(response)
//        let coffees = try JSONDecoder().decode(OkasinotorikoResponse.self, from: data)
        
        let result = try JSONDecoder().decode(OkasinotorikoResponse2.self, from: data)
        print(result)
        return result.item
    }
}

#Preview {
    CoffeeListView()
}
