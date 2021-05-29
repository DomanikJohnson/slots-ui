//
//  ContentView.swift
//  SlotsUI
//
//  Created by Domanik Johnson on 5/28/21.
//

import SwiftUI

struct ContentView: View {
    @State var counter: Int = 0
    @State var slot1:String = "apple"
    @State var slot2:String = "cherry"
    @State var slot3:String = "star"

    
    func spin() {
        let slotArr:[String] = ["apple", "cherry", "star"]
        let rand1:Int = Int.random(in: 0...2)
        let rand2:Int = Int.random(in: 0...2)
        let rand3:Int = Int.random(in: 0...2)
        
        // Setting slots to one rand in slots arrayb
        slot1 = slotArr[rand1]
        slot2 = slotArr[rand2]
        slot3 = slotArr[rand3]
        
        // check if slots are equl or not
        if (slot1 == slot2 && slot2 == slot3) {
            counter += 25
        } else if ((slot1 == slot2 || slot1 == slot3 || slot2 == slot3)  ) {
            counter += 10
        }else {
            counter -= 25
        }
    }
    var body: some View {
        VStack{
            Text("SwiftUI Slots! ").font(.largeTitle).padding(.top, 35.0)
            Spacer()
            Text("Credits: \(String(counter))")
            Spacer()
            HStack{
                Spacer()
                Image(slot1)
                    .resizable()
                    .scaledToFit()
                Image(slot2)
                    .resizable()
                    .scaledToFit()
                Image(slot3)
                    .resizable()
                    .scaledToFit()
                Spacer()
            }
            Spacer()
            Button("Spin") {
                spin()
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
