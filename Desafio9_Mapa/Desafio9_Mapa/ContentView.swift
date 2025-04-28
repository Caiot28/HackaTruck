//
//  ContentView.swift
//  Desafio9_Mapa
//
//  Created by Turma01-9 on 28/04/25.
//

import SwiftUI
import MapKit

struct Location: Hashable{
    let nome: String
    let foto: String
    let descricao: String
    let latitude: Double
    let longitude: Double
}

struct ContentView: View {
    @State private var position = MapCameraPosition.region( MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: 0, longitude: 0), span: MKCoordinateSpan(latitudeDelta: 300, longitudeDelta: 1)))
    @State private var showingCredits = false
    let arrayLocations = [
        Location(nome: "Cristo Redentor", foto: "https://upload.wikimedia.org/wikipedia/commons/thumb/4/4f/Christ_the_Redeemer_-_Cristo_Redentor.jpg/800px-Christ_the_Redeemer_-_Cristo_Redentor.jpg", descricao: "Cristo Redentor é uma estátua que retrata Jesus Cristo localizada no topo do morro do Corcovado, a 709 metros acima do nível do mar, dentro do Parque Nacional da Tijuca. Tem vista para parte considerável da cidade brasileira do Rio de Janeiro, sendo a frente da estátua voltada para a Baía de Guanabara e as costas para a Floresta da Tijuca. Feito de concreto armado e pedra-sabão,tem trinta metros de altura (uma das maiores estátuas do mundo), sem contar os oito metros do pedestal, sendo a mais alta estátua do mundo no estilo Art Déco. Seus braços se esticam por 28 metros de largura e a estrutura pesa 1145 toneladas.", latitude: -22.951743, longitude: -43.21088),
        Location(nome: "Taj Mahal", foto: "https://upload.wikimedia.org/wikipedia/commons/thumb/1/1f/Taj_Mahal_N-UP-A28-a.jpg/960px-Taj_Mahal_N-UP-A28-a.jpg", descricao: "O Taj Mahal (em hindi: ताज महल) é um mausoléu situado em Agra, na Índia, sendo o mais conhecido dos monumentos do país. Encontra-se classificado pela UNESCO como Patrimônio da Humanidade. Foi anunciado em 2007 como uma das sete maravilhas do mundo moderno. A obra foi feita entre 1632 e 1653 com a força de cerca de 20 mil homens, trazidos de várias cidades do Oriente, para trabalhar no suntuoso monumento de mármore branco que o imperador Shah Jahan mandou construir em memória de sua esposa favorita, Aryumand Banu Begam, a quem chamava de Mumtaz Mahal ('A joia do palácio'). Ela morreu após dar à luz o 14º filho, tendo o Taj Mahal sido construído sobre seu túmulo, junto ao rio Yamuna", latitude: 27.173891, longitude: 78.042068),
        Location(nome: "Machu Picchu", foto: "https://upload.wikimedia.org/wikipedia/commons/thumb/3/38/Sunset_across_Machu_Picchu.jpg/500px-Sunset_across_Machu_Picchu.jpg", descricao: "Também chamada 'cidade perdida dos Incas', é uma cidadela Inca, da Era pré-colombiana, bem conservada, localizada no topo de uma montanha, a 2 400 metros de altitude, no vale do rio Urubamba, atual Peru. Foi construída como no início do século XV, por volta de 1420, sob as ordens de Pachacuti. \nO local é, provavelmente, o símbolo mais típico do Império Inca, quer devido à sua original localização e características geológicas, quer devido à sua descoberta tardia em 1911. Apenas cerca de 30% da cidade é de construção original, o restante foi reconstruído. As áreas reconstruídas são facilmente reconhecidas, pelo encaixe entre as pedras. A construção original é formada por pedras maiores, e com encaixes com pouco espaço entre as rochas.", latitude: -13.163068, longitude: -72.545128),
        Location(nome: "Chichén Itzá", foto: "https://upload.wikimedia.org/wikipedia/commons/thumb/4/48/Chichen_Itza-18_%28cropped%29.jpg/960px-Chichen_Itza-18_%28cropped%29.jpg", descricao: "Chichén Itzá foi uma grande cidade pré-colombiana construída pela civilização maia no final do período clássico. O sítio arqueológico está localizado no município de Tinum, no estado de Yucatán, México.\nChichén Itzá era um polo urbano importante dos maias na planície norte no início (600-900) e no final (cerca 800-900) do período clássico e também no início do período pós-clássico (cerca de 900-1200). O local exibe vários estilos arquitetônicos, reminiscentes dos estilos vistos no México central. Acreditava-se que a presença de estilos desta região era sinal da migração direta ou mesmo da conquista do México central, mas a maioria de interpretações contemporâneas veem a presença destes estilos não maias mais como o resultado da difusão cultural.", latitude: 20.682985, longitude: -88.568649),
        Location(nome: "Coliseu", foto: "https://upload.wikimedia.org/wikipedia/commons/thumb/d/de/Colosseo_2020.jpg/500px-Colosseo_2020.jpg", descricao: "Coliseu (em italiano: Colosseo), também conhecido como Anfiteatro Flaviano, é um anfiteatro oval localizado no centro da cidade de Roma, capital da Itália. Construído com tijolos revestidos de argamassa e areia, e originalmente cobertos com travertino é o maior anfiteatro já construído e está situado a leste do Fórum Romano.\n A construção começou sob o governo do imperador Vespasiano em 72 d.C. e foi concluída em 80 d.C., sob o regime do seu sucessor e herdeiro, Tito. Outras modificações foram feitas durante o reinado de Domiciano (81-96). Estes três imperadores são conhecidos como a dinastia flaviana e o anfiteatro foi nomeado em latim desta maneira por sua associação com o nome da família (Flavius).", latitude: 41.890634, longitude: 12.490763),
        Location(nome: "Petra", foto: "https://upload.wikimedia.org/wikipedia/commons/thumb/6/62/Al_Khazneh_Petra_edit_2.jpg/500px-Al_Khazneh_Petra_edit_2.jpg", descricao: "Petra, originalmente conhecida pelos nabateus como Raqmu, é uma cidade histórica e arqueológica localizada no sul da Jordânia. A cidade é famosa por sua arquitetura esculpida em rocha e por seu sistema de canalização de água. Outro nome para Petra é Cidade Rosa, devido à cor das pedras do local. \nEstabelecido possivelmente já em 312 a.C. como a capital dos árabes nabateus, é um símbolo jordaniano, assim como a atração turística a mais visitada do país. Os nabateus eram árabes nômades que aproveitaram a proximidade de Petra com as rotas comerciais regionais para estabelecê-la como um importante centro comercial. Os nabateus também são conhecidos por sua grande habilidade na construção de métodos eficientes de coleta de água em desertos áridos e seu talento em esculpir estruturas em rochas sólidas. \nPetra encontra-se na encosta de Jebel al-Madhbah (identificado por alguns como bíblico Monte Hor) em uma bacia entre as montanhas que formam o flanco oriental de Arabah (Wadi Araba), o grande vale que vai do Mar Morto ao Golfo de Aqaba. O local é um Patrimônio Mundial da UNESCO desde 1985.", latitude: 30.328960, longitude: 35.444832),
        Location(nome: "Muralha da China", foto: "https://upload.wikimedia.org/wikipedia/commons/thumb/6/6f/The_Great_Wall_of_China_at_Jinshanling.jpg/960px-The_Great_Wall_of_China_at_Jinshanling.jpg", descricao: "Grande Muralha da China é uma série de fortificações feitas de pedra, tijolo, terra compactada, madeira e outros materiais, geralmente construída ao longo de uma linha leste-oeste através das fronteiras históricas do norte da China para proteger os Estados e impérios chineses contra as invasões dos vários grupos nômades das estepes da Eurásia, principalmente os mongóis. Várias muralhas estavam sendo construídas já no século VII a.C., que mais tarde foram unidas e tornadas maiores e mais fortes, no que agora é referido como a Grande Muralha. Especialmente famosa é a muralha construída entre 220 e 206 a.C. por Qin Shi Huang, o primeiro Imperador da China. Pouco desta muralha permanece nos dias atuais. Desde então, a Grande Muralha foi reconstruída, mantida e melhorada; a maior parte do trecho existente é da dinastia Ming (1368-1644).\nOutras finalidades da Grande Muralha incluíram controles de fronteira, permitindo a imposição de direitos sobre mercadorias transportadas ao longo da Rota da Seda, a regulação ou o encorajamento do comércio e do controle da imigração e da emigração. Além disso, as características defensivas da Grande Muralha foram reforçadas pela construção de torres de vigia, quartéis de tropas, estações de guarnição, capacidade de sinalização por meio de fumaça ou fogo e o fato de que o caminho da Grande Muralha também servia como um corredor de transporte.", latitude: 40.431908, longitude: 116.570374),
        Location(nome: "Necrópole de Gizé*", foto: "https://upload.wikimedia.org/wikipedia/commons/thumb/a/af/All_Gizah_Pyramids.jpg/960px-All_Gizah_Pyramids.jpg", descricao: "*A Necrópole de Gizé, no Egito, por ser a única remanescente das sete maravilhas do mundo originais, recebeu o título honorário.\n Necrópole de Gizé (em árabe: جيزة يسروبوليس), também chamada de Pirâmides de Gizé, Guizé ou Guisa, é um sítio arqueológico localizado no planalto de Gizé, nos arredores do Cairo, Egito. Este complexo de monumentos antigos inclui os três complexos de pirâmides conhecidas como as Grandes Pirâmides, a escultura maciça conhecida como a Grande Esfinge, vários cemitérios, uma vila operária e um complexo industrial. A palavra pirâmide não provém da língua egípcia. Formou-se a partir do grego 'pyra' (que quer dizer fogo, luz, símbolo) e 'midos' (que significa medidas). A necrópole está localizada a cerca de 9 km do interior do deserto para a cidade velha de Gizé, no Nilo, e cerca de 25 km a sudoeste do centro da cidade do Cairo, no local da antiga cidade egípcia de Mênfis. As pirâmides, que sempre tiveram grande importância como emblemas do antigo Egito no imaginário ocidental, foram popularizadas nos tempos helenísticos, quando a Grande Pirâmide foi listada por Antípatro de Sídon como uma das Sete Maravilhas do Mundo. É, de longe, a mais antiga das maravilhas do mundo antigo e a única que ainda existe.", latitude: 29.976480, longitude: 31.131302)
    ]
    @State var aux = Location(nome: "Cristo Redentor", foto: "https://upload.wikimedia.org/wikipedia/commons/thumb/4/4f/Christ_the_Redeemer_-_Cristo_Redentor.jpg/800px-Christ_the_Redeemer_-_Cristo_Redentor.jpg", descricao: "Cristo Redentor é uma estátua que retrata Jesus Cristo localizada no topo do morro do Corcovado, a 709 metros acima do nível do mar, dentro do Parque Nacional da Tijuca. Tem vista para parte considerável da cidade brasileira do Rio de Janeiro, sendo a frente da estátua voltada para a Baía de Guanabara e as costas para a Floresta da Tijuca. Feito de concreto armado e pedra-sabão,tem trinta metros de altura (uma das maiores estátuas do mundo), sem contar os oito metros do pedestal, sendo a mais alta estátua do mundo no estilo Art Déco. Seus braços se esticam por 28 metros de largura e a estrutura pesa 1145 toneladas.", latitude: -22.951743, longitude: -43.21088)
    
    @State private var selectedBeauty = 0
    var beauties = ["Cristo Redentor", "Taj Mahal", "Coliseu"]
    var body: some View {
        ZStack{
            VStack{
                Picker(selection: $selectedBeauty, label: Text("Maravilhas")){
                    ForEach(0..<beauties.count, id: \.self){
                        Text(self.beauties[$0])
                    }
                }
                Map(position: $position){
                    ForEach(arrayLocations, id: \.self) { index in
                        Annotation(index.nome, coordinate: CLLocationCoordinate2D(latitude: index.latitude, longitude: index.longitude)){
                            
                                Image(systemName: "mappin.circle.fill")
                                    .resizable()
                                    .foregroundStyle(.black)
                                    .frame(width: 40, height: 40)
                                    .clipShape(.circle)
                                    .onTapGesture{
                                        showingCredits.toggle()
                                        aux = index
                                    }
                                .sheet(isPresented: $showingCredits) {
                                    sheetView(recebe: $aux)
                            }
                        }
                    }
                }
            }
        }
    }
}

#Preview {
    ContentView()
}
