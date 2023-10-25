import SwiftUI

func RegisterQuestion()-> String{
    let questions  = ["Last five things you've seen","Last five places you've seen","Last five meals you have eaten"]
    return String(questions.randomElement()!)
}

struct ContentView: View {
    @State var Thing1: String = ""
    @State var Thing2: String = ""
    @State var Thing3: String = ""
    @State var Thing4: String = ""
    @State var Thing5: String = ""
    @State var Prompt: String = RegisterQuestion()
    
    var body: some View {
        VStack {
            Text("Hygge")
                .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
            Image("Manhattan")
                .resizable(capInsets: /*@START_MENU_TOKEN@*/EdgeInsets()/*@END_MENU_TOKEN@*/, resizingMode: /*@START_MENU_TOKEN@*/.stretch/*@END_MENU_TOKEN@*/)
                .scaledToFit()
                .frame(width: 500, height: 1500, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                .padding(/*@START_MENU_TOKEN@*/EdgeInsets()/*@END_MENU_TOKEN@*/)
                .clipShape(RoundedRectangle(cornerSize(urmom)))
            TextField("1.",text: $Thing1)
                .textFieldStyle(.roundedBorder)
                .padding()
            TextField("2.",text:$Thing2)
                .textFieldStyle(.roundedBorder)
                .padding()
            TextField("3.",text:$Thing3)
                .textFieldStyle(.roundedBorder)
                .padding()
            TextField("4.",text:$Thing4)
                .textFieldStyle(.roundedBorder)
                .padding()
            TextField("5.",text:$Thing5)
                .textFieldStyle(.roundedBorder)
                .padding()
            Button("Another Prompt"){
                Prompt=RegisterQuestion()
            }
            .foregroundColor(.white)
            .buttonStyle(.bordered)
            .background(Gradient(colors:[.cyan,.blue]))
            .cornerRadius(30)
            .padding()
            
            
        }
    }
}
