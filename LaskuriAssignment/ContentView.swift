import SwiftUI

struct ContentView: View {
    @State private var stepInput: String = "1"

    @StateObject private var c = Counter()

    var body: some View {
        VStack {
            
            //Nykyinen arvo, yläraja ja alaraja
            Text("Current Value: \(c.value)")
            Text("Upperbound: \(c.upperBound)")
            Text("LowerBound: \(c.lowerBound)")

            //Kenttä jossa voi asettaa Step:in arvon
            Text("Set Step:")
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(.top, 10)
            TextField("Step value", text: $stepInput)
                .keyboardType(.numberPad)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .onSubmit {
                    
                    if let newStep = Int(stepInput), newStep > 0 {
                        c.setStep(newStep)
                    }
                }

            //Plus ja minus napit
            HStack {
                Button(action: {
                    c.increment()
                }) {
                    Text("+")
                        .font(.title)
                        .foregroundColor(.green)
                        .padding()
                    
                }

                Button(action: {
                    c.decrement()
                }) {
                    Text("-")
                        .font(.title)
                        .foregroundColor(.red)
                        .padding()
                }
            }
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
