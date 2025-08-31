//
//  SwiftUIChallenge
//  画像と同じようなViewを実装してみよう！
//
// E. 商品アイテム
//

import SwiftUI

struct eView: View {
    var body: some View {
        ZStack(alignment:.leading){
            AsyncImage(url: URL(string: "https://picsum.photos/300/200")!)
                .frame(width:200,height:300)
                .cornerRadius(10)
            
        }
        .padding(10)
            Text("E. 商品アイテム")
            .font(.caption)
            .foregroundColor(Color.gray)
        
                
            
            
            // 画像だけは最初に提示しておきます
        
    }
}

#Preview {
    eView()
}
