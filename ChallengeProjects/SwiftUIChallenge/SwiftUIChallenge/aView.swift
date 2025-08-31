//
//  SwiftUIChallenge
//  画像と同じようなViewを実装してみよう！
//
// A. 縦に3つの色付き長方形を等間隔で配置
//

import SwiftUI

struct aView: View {
    var body: some View {
        VStack{
            Rectangle()
                .fill(Color.red)
                .frame(width:70,height:30)
            Rectangle()
                .fill(Color.green)
            .frame(width:80,height:30)
        Rectangle()
            .fill(Color.yellow)
            .frame(width:90,height:30)
        Text("A: 縦に3つの色付き長方形を等間隔で配置")
        }
    }
}

#Preview {
    aView()
}
