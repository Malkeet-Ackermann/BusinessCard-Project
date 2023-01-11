//
//  ContentView.swift
//  leviBusinessCard
//
//  Created by malkeet on 27/12/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack{
            Color(red: 0.18, green: 0.80, blue: 0.44)
                .ignoresSafeArea()
                
            VStack {
                Image("jobs")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                
                    .frame(width: 300, height:200)
                    .clipShape(Capsule())
                    .overlay(
                        Capsule()
                            .stroke(Color.white,lineWidth: 8)
                        
                    )
                Text("Malkeet Levi")
                    .bold().foregroundColor(.white)
                    .font(Font.custom("Pacifico-Regular", size: 50))
                
                
                Text("Genius iOS Developer").foregroundColor(.white)
                    .bold()
                    .font(Font
                        .custom("ChivoMono-Italic-VariableFont_wght", size: 20))
                Divider()
                Divider()
                
                
                
                
                    ExtractedView(icon: "phone.fill", info: "91+9621440986")
                Divider()
                Divider()
                    ExtractedView(icon: "", info: "malkeetsighworkspace@gmail.com")
                    
                
            }

        }
        
        
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct ExtractedView: View {
    
    let icon:String
    let info:String// number
    
    var body: some View {
        RoundedRectangle(cornerRadius: 25)
            .frame(width: 400, height:50)
            .foregroundColor(Color.white)
        
            .overlay(
                HStack{
                    Image(systemName: icon)
                        .foregroundColor(Color.green)
                    Text(info)
                        .font(Font
                            .custom("ChivoMono-Italic-VariableFont_wght", fixedSize: 20))
                    
                }
                
            )
    }
}
