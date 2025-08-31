//
//  CalculatorView.swift
//  CalculatorApp
//
//  ChallengeProjects
//

import SwiftUI

struct CalculatorView: View {
    // 最初に利用する変数を定義しています
    // @State: プロパティが変更されたときにビューを自動的に再描画するためのおまじない
    @State var firstNumber: String = ""
    @State var secondNumber: String = ""
    @State var thirdnumber: String = ""
    @State var fourthnumber: String = ""
    @State var result1: String = "?"
    @State var result2: String = "?"
    
    var body: some View {
        VStack(spacing: 20) {
            Text("足し算電卓")
                .font(.largeTitle)
                .fontWeight(.bold)
                .foregroundColor(Color.blue)
            
            HStack(spacing: 10) {
                // 1つ目の入力フィールド
                // @Stateのついたプロパティには$をつけるというおまじない。
                TextField("?", text: $firstNumber)
                    .keyboardType(.numberPad)
                    .frame(width:40)
                    .multilineTextAlignment(.center)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                
                Text("+")
                    .font(.title)
                
                // 2つ目の入力フィールド
                TextField("?", text: $secondNumber)
                    .keyboardType(.numberPad)
                    .frame(width: 40)
                    .multilineTextAlignment(.center)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                
                Text("=")
                    .font(.title)
                
                // 結果の表示
                Text(result1)
                    .font(.title)
                    .fontWeight(.bold)
                    .frame(width: 100)
                    .multilineTextAlignment(.center)
            }
            
            // 計算ボタン
            Button(action: {
                // ここでボタンを押した時の挙動を記述
                // 今回は calculateSum() というメソッド(関数)を呼び出しています
                // 具体的な処理は calculateSum() 内に記述します
                calculateSum()
            }) {
                Text("計算する")
                    .fontWeight(.bold)
                    .padding()
                    .frame(maxWidth: .infinity)
                    .background(Color.blue)
                    .foregroundColor(.white)
                    .cornerRadius(50)
            }
            .padding(.horizontal)
            
            Spacer()
        }
        .padding()
        
        Divider()
            
        
        // TODO: - Challenge2
        // 引き算電卓も作ってみよう
        
        VStack(spacing: 20) {
            Text("引き算電卓")
                .font(.largeTitle)
                .fontWeight(.bold)
                .foregroundColor(Color.blue)
            
            HStack(spacing: 10) {
                // 1つ目の入力フィールド
                // @Stateのついたプロパティには$をつけるというおまじない。
                TextField("", text: $thirdnumber)
                    .keyboardType(.numberPad)
                    .frame(width:40)
                    .multilineTextAlignment(.center)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                
                Text("-")
                    .font(.title)
                
                // 2つ目の入力フィールド
                TextField("", text: $fourthnumber)
                    .keyboardType(.numberPad)
                    .frame(width: 40)
                    .multilineTextAlignment(.center)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                
                Text("=")
                    .font(.title)
                
                // 結果の表示
                Text(result2)
                    .font(.title)
                    .fontWeight(.bold)
                    .frame(width: 100)
                    .multilineTextAlignment(.center)
            }
            
            // 計算ボタン
            Button(action: {
                // ここでボタンを押した時の挙動を記述
                // 今回は calculateSum() というメソッド(関数)を呼び出しています
                // 具体的な処理は calculateSum() 内に記述します
                calculateSub()
            }) {
                Text("計算する")
                    .fontWeight(.bold)
                    .padding()
                    .frame(maxWidth: .infinity)
                    .background(Color.blue)
                    .foregroundColor(.white)
                    .cornerRadius(50)
            }
            .padding(.horizontal)
            
            Spacer()
        }
        .padding()
        
        Divider()
        
        
    }

    // 足し算の処理
    func calculateSum() {
        _ = Int(firstNumber)
        if let firstNumberInt = Int(firstNumber), let secondNumberInt = Int(secondNumber) {
            // 値が存在する時はこっち (= Intにキャストできた時)
            let result1Int = firstNumberInt + secondNumberInt
            result1 = String(result1Int)
        } else {
            // 値が存在しない時はこっち (= Intにキャストできなかった時)
            result1 = "Error"
        }
    }

    
    func calculateSub() {
        if let thirdNumberInt = Int(thirdnumber),
           let fourthNumberInt = Int(fourthnumber) {
            // 値が存在する時はこっち (= Intにキャストできた時)
            let result2Int = thirdNumberInt - fourthNumberInt
            result2 = String(result2Int)
        } else {
            // 値が存在しない時はこっち (= Intにキャストできなかった時)
            result2 = "Error"
        }
        // TODO: - Challenge1
        //
        
    }
}

#Preview {
    CalculatorView()
}

