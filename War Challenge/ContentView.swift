//
//  ContentView.swift
//  War Challenge
//
//  Created by Fidan Oruc on 03.08.22.
//

import SwiftUI

struct ContentView: View {
    
    @State var playerCard = "card5"
    @State var cpuCard = "card9"
    @State var playerScore = 0
    @State var cpuScore = 0
  
    var body: some View {
   
        ZStack{
            Image("background").ignoresSafeArea()
                .ignoresSafeArea()
            VStack{
                Spacer()
                Image("logo")
                Spacer()
                HStack{
                    Spacer()
                    Image(playerCard)
                    Spacer()
                    Image(cpuCard)
                    Spacer()
                }
                Spacer()
// MARK: DEAL BUTTON
                Button(action: {
                    
                    // generate a random number etween 2 and 14
                    let playerRand = Int.random(in: 2...14)
                    let cpuRand = Int.random(in: 2...14)
                    
                    //update the cards
                    //@State - self is immutable
                    playerCard = "card" + String(playerRand)
                    cpuCard = "card" + String(cpuRand)
                    
                    //update the scores
                    if playerRand > cpuRand{
                        playerScore += 1
                    }else if playerRand < cpuRand{
                        cpuScore += 1
                    }
                    
                }, label: {
                    Image("dealbutton")
                })
                Spacer()
                HStack{
                    Spacer()
                    VStack{
                        Text("Player")
                            .font(.headline)
                            .padding(.bottom, 10.0)
                        
                        Text(String(playerScore))
                            .font(.largeTitle)
                    }
                    Spacer()
                    VStack{
                        Text("CPU")
                            .font(.headline)
                            .padding(.bottom, 10.0)
                        
                        Text(String(cpuScore))
                            .font(.largeTitle)
                    }
                    Spacer()
                }.foregroundColor(Color.white)
                Spacer()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
