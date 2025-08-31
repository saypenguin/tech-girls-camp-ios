import SwiftUI

struct CoffeeListView: View {
    let coffee1 = Coffee(
        id: 1,
        title: "Black Coffee",
        description: "Svart kaffe är så enkelt som det kan bli med malda kaffebönor dränkta i hett vatten, serverat varmt.",
        ingredients: ["Coffee"],
        image: URL(string: "https://images.unsplash.com/photo-1494314671902-399b18174975?auto=format&fit=crop&q=80&w=1887&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D")!
    )
    let coffee2 = Coffee(
           id: 2,
           title: "Black Coffee",
           description: "Svart kaffe är så enkelt som det kan bli med malda kaffebönor dränkta i hett vatten, serverat varmt.",
           ingredients: ["Coffee"],
           image: URL(string: "https://images.unsplash.com/photo-1494314671902-399b18174975?auto=format&fit=crop&q=80&w=1887&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D")!
       )
       let coffee3 = Coffee(
           id: 3,
           title: "Black Coffee",
           description: "Svart kaffe är så enkelt som det kan bli med malda kaffebönor dränkta i hett vatten, serverat varmt.",
           ingredients: ["Coffee"],
           image: URL(string: "https://images.unsplash.com/photo-1494314671902-399b18174975?auto=format&fit=crop&q=80&w=1887&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D")!
       )
       let coffee4 = Coffee(
               id: 4,
               title: "Black Coffee",
               description: "Svart kaffe är så enkelt som det kan bli med malda kaffebönor dränkta i hett vatten, serverat varmt.",
               ingredients: ["Coffee"],
               image: URL(string: "https://images.unsplash.com/photo-1494314671902-399b18174975?auto=format&fit=crop&q=80&w=1887&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D")!
           )
       let coffee5 = Coffee(
           id: 5,
           title: "Black Coffee",
           description: "Svart kaffe är så enkelt som det kan bli med malda kaffebönor dränkta i hett vatten, serverat varmt.",
           ingredients: ["Coffee"],
           image: URL(string: "https://images.unsplash.com/photo-1494314671902-399b18174975?auto=format&fit=crop&q=80&w=1887&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D")!
       )
    var body: some View {
        ScrollView {
            LazyVStack(spacing: 20) {
                CoffeeItemView(coffee: coffee1)
                    .padding(.horizontal)
                CoffeeItemView(coffee: coffee2)
                    .padding(.horizontal)
                CoffeeItemView(coffee: coffee3)
                    .padding(.horizontal)
                CoffeeItemView(coffee: coffee4)
                    .padding(.horizontal)
                CoffeeItemView(coffee: coffee5)
                    .padding(.horizontal)
            }
        }
    }
}

#Preview {
    let coffee1 = Coffee(
        id: 1,
        title: "Black Coffee",
        description: "Svart kaffe är så enkelt som det kan bli med malda kaffebönor dränkta i hett vatten, serverat varmt.",
        ingredients: ["Coffee"],
        image: URL(string: "https://images.unsplash.com/photo-1494314671902-399b18174975?auto=format&fit=crop&q=80&w=1887&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D")!
    )

    CoffeeItemView(coffee: coffee1)
        .padding()
}
