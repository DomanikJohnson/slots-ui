//
//  ContentView.swift
//  SlotsUI
//
//  Created by Domanik Johnson on 5/28/21.
//

import SwiftUI

struct ContentView: View {
    @State var counter: Int = 0
    var body: some View {
        VStack{
            Text("SwiftUI Slots! ").font(.largeTitle).padding(.top, 35.0)
            Spacer()
            Text("Credits: \(String(counter))")
            Spacer()
            HStack{
                Spacer()
                Image("apple")
                    .resizable()
                    .scaledToFit()
                Image("cherry")
                    .resizable()
                    .scaledToFit()
                Image("star")
                    .resizable()
                    .scaledToFit()
                Spacer()
            }
            Spacer()
            Button("Spin") {
                print("Hello")
            }
            .padding()
            .frame(width: /*@START_MENU_TOKEN@*/102.0/*@END_MENU_TOKEN@*/, height: /*@START_MENU_TOKEN@*/40.0/*@END_MENU_TOKEN@*/)
            .background(Color.pink)
            .cornerRadius(/*@START_MENU_TOKEN@*/12.0/*@END_MENU_TOKEN@*/)
            .foregroundColor(.white)
            
            Spacer()
        }.foregroundColor(.black)
       
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
