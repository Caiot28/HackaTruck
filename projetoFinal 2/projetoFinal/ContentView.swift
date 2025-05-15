import SwiftUI
import Charts

struct DadoGrafico: Identifiable {
    let id = UUID()
    let index: Int
    let valor: Int
}

struct ContentView: View {
    @State private var randomNumbers: [Int] = []
    let timer = Timer.publish(every: 3.0, on: .main, in: .common).autoconnect()

    var body: some View {
        VStack {
            Text("Último número: \(randomNumbers.last ?? 0)")
                .font(.title)
                .padding()

            // Gráfico com os dados convertidos
            Chart(randomNumbers.enumerated().map { DadoGrafico(index: $0.offset, valor: $0.element) }) { dado in
                LineMark(
                    x: .value("Índice", dado.index),
                    y: .value("Valor", dado.valor)
                )
                .interpolationMethod(.catmullRom)
                .foregroundStyle(.blue)
            }
            .frame(height: 300)
            .padding()
        }
        .onReceive(timer) { _ in
            let newNumber = Int.random(in: 80...90)
            randomNumbers.append(newNumber)
            
            // Limita para os últimos 50 pontos (opcional)
            if randomNumbers.count > 50 {
                randomNumbers.removeFirst()
            }
        }
    }
}

#Preview {
    ContentView()
}
