//
//  ContentView.swift
//  SPIN
//
//  Created by Mehak Bansal on 20/02/21.
//

import SwiftUI

struct ContentView: View {
    
    @State var cardOne = "card1"
    @State var cardTwo = "card2"
    @State var cardThree = "card3"
    @State var cardFour = "card1"
    @State var cardFive = "card2"
    @State var cardSix = "card3"
    @State var cardSeven = "card1"
    @State var cardEight = "card2"
    @State var cardNine = "card3"
    @State var score = 0
    var body: some View {
 VStack(spacing: 20.0){
              Spacer()
               Text("SwiftUI Slots!")
                   .font(.title)
                  Spacer()
    
    Text("Credits = " + String(score) )
        .font(.title)
                
    HStack(alignment: .center){
        
        Image(cardOne).resizable().aspectRatio(contentMode: .fit)
              Image(cardTwo).resizable().aspectRatio(contentMode: .fit)
              Image(cardThree).resizable().aspectRatio(contentMode: .fit)
    }
    HStack{   Image(cardFour).resizable().aspectRatio(contentMode: .fit)
              Image(cardFive).resizable().aspectRatio(contentMode: .fit)
              Image(cardSix).resizable().aspectRatio(contentMode: .fit)
    }
    HStack{
        
     Image(cardSeven).resizable().aspectRatio(contentMode: .fit)
              Image(cardEight).resizable().aspectRatio(contentMode: .fit)
              Image(cardNine).resizable().aspectRatio(contentMode: .fit)
    }
        
           Spacer()
    
    Button(action: {
        
        //random
        let appleRand = Int.random(in: 1...3)
        let cherryRand = Int.random(in: 1...3)
        let starRand = Int.random(in: 1...3)
        let new = Int.random(in: 1...3)
        let new1 = Int.random(in: 1...3)
        let new2 = Int.random(in: 1...3)
        let new3 = Int.random(in: 1...3)
        let new4 = Int.random(in: 1...3)
        let new5 = Int.random(in: 1...3)
        // updating cards
        cardOne = "card" + String(appleRand)
        cardTwo = "card" + String(cherryRand)
       cardThree = "card" + String(starRand)
        cardFour = "card" + String(new)
        cardFive = "card" + String(new1)
       cardSix = "card" + String(new2)
        cardSeven = "card" + String(new3)
        cardEight = "card" + String(new4)
       cardNine = "card" + String(new5)
        if (cardOne == cardTwo
          && cardOne == cardThree
          && cardOne == cardFour
          && cardOne == cardFive
          && cardOne ==  cardSix
          && cardOne == cardEight
          && cardOne == cardNine ){
            
            score = score + 1
            
        }
        
    }, label: {
        Text("SPIN").padding().padding([.leading, .trailing], 40).background(Color.pink).cornerRadius(25.0).foregroundColor(Color.white)
    })
           Spacer()
    
    
}
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
