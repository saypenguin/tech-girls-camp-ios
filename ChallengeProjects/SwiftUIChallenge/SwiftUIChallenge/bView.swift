//
//  SwiftUIChallenge
//  画像と同じようなViewを実装してみよう！
//
// B. 二重に丸を配置
//

import SwiftUI

struct bView: View {
    var body: some View {
        ZStack{
            Circle()
                .fill(Color.red)
                .frame(width:150,height:150)
            Circle()
                .fill(Color.green)
                .frame(width:100,height:150)
            
            Text("B. 二重に丸を配置")
        }
    }
}

#Preview {
    bView()
}
