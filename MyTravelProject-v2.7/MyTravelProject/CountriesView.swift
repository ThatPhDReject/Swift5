//
//  CountriesView.swift
//  MyTravelProject
//
//  Created by Mounir SISSANI on 21/09/2021.

//  Created by Paliani Théodore on 20/09/2021.
//

import SwiftUI
struct CountriesView: View {
    @State var selectedCountry: String = ""
    let proposeCountries: [String] = [
        " Afghanistan ", " Afrique du Sud ", " Albanie ", " Algérie ", " Allemagne ", " Andorre ", " Angola ", " Anguilla ", " Antarctique ", " Antigua-et-Barbuda ", " Antilles néerlandaises ", " Arabie saoudite ", " Argentine ", " Arménie ", " Aruba ", " Australie ", " Autriche ", " Azerbaïdjan ", " Bahamas ", " Bahreïn ", " Bangladesh ", " Barbade ", " Bélarus ", " Belgique ", " Belize ", " Bénin ", " Bermudes ", " Bhoutan ", " Bolivie ", " Bosnie-Herzégovine ", " Botswana ", " Brésil ", " Brunéi Darussalam ", " Bulgarie ", " Burkina Faso ", " Burundi ", " Cambodge ", " Cameroun ", " Canada ", " Cap-Vert ", " Chili ", " Chine ", " Chypre ", " Colombie ", " Comores ", " Congo ", " Corée du nord ", " Corée du sud ", " Costa Rica ", " Côte d’Ivoire ", " Croatie ", " Cuba ", " Danemark ", " Djibouti ", " Dominique ", " Egypte ", " El Salvador ", " Emirats arabes unis ", " Equateur ", " Erythrée ", " Espagne ", " Estonie ", " Etats-Unis d’Amérique ", " Ethiopie ", " Fédération de Russie ", " Fidji ", " Finlande ", " France ", " Gabon ", " Gambie ", " Géorgie ", " Ghana ", " Gibraltar ", " Grèce ", " Groenland ", " Guadeloupe ", " Guam ", " Guatemala ", " Guinée ", " Guinée équatoriale ", " Guinée-Bissau ", " Guyana ", " Guyane française ", " Haïti ", " Honduras ", " Hong Kong ", " Hongrie ", " Ile De Bouvet ", " Ile Norfolk ", " Iles Caïmanes ", " Iles Cook<" , " Iles d’Aland ", " Iles Falkland ", " Iles Féroé ", " Iles Mariannes septentrionales ", " Iles Marshall ", " Iles Salomon ", " Iles Svalbard et Jan Mayen ", " Iles Turques et Caïques ", " Iles Vierges américaines ", " Iles Vierges britanniques ", " Iles Wallis et Futuna ", " Inde ", " Indonésie ", " Iran ", " Iraq ", " Irlande ", " Islande ", " Israel ", " Italie ", " Jamaïque ", " Japon ", " Jordanie ", " Kazakhstan ", " Kenya ", " Kirghizistan ", " Kiribati ", " Koweït ", " Laos ", " Lesotho ", " Lettonie ", " Liban ", " Libéria ", " Libye ", " Liechtenstein ", " Lituanie ", " Luxembourg ", " Macao ", " Madagascar ", " Malaisie ", " Malawi ", " Maldives ", " Mali ", " Malte ", " Maroc ", " Martinique ", " Maurice ", " Mauritanie ", " Mayotte ", " Mexique ", " Micronésie ", " Moldovie ", " Monaco ", " Mongolie ", " Montserrat ", " Mozambique ", " Myanmar ", " Namibie ", " Nauru ", " Népal ", " Nicaragua ", " Niger ", " Nigéria ", " Nioué ", " Norvège ", " Nouvelle-Calédonie ", " Nouvelle-Zélande ", " Oman ", " Ouganda ", " Ouzbékistan ", " Pakistan ", " Palaos ", " Panama ", " Papouasie-Nouvelle-Guinée ", " Paraguay ", " Pays-Bas ", " Pérou ", " Philippines ", " Pitcairn ", " Pologne ", " Polynésie française ", " Porto Rico ", " Portugal ", " Qatar ", " République centrafricaine ", " République démocratique du Congo ", " République dominicaine ", " République tchèque ", " Réunion ", " Roumanie ", " Royaume-Uni ", " Rwanda ", " Saint-Kitts-et-Nevis ", " Saint-Marin ", " Saint-Pierre-et-Miquelon ", " Saint-Siège ", " Saint-Vincent-et-les Grenadines ", " Sainte-Hélène ", " Sainte-Lucie ", " Samoa ", " Samoas américaines ", " Sao Tomé-et-Principe ", " Sénégal ", " Serbie-et-Monténégro ", " Seychelles ", " Sierra Leone ", " Singapour ", " Slovaquie ", " Slovénie ", " Somalie ", " Soudan ", " Sri Lanka ", " Suède ", " Suisse ", " Suriname ", " Swaziland ", " Syrie ", " Tadjikistan ", " Taiwan ", " Tanzanie ", " Tchad ", " Territoire palestinien occupé ", " Thaïlande ", " Timor-Leste ", " Togo ", " Tokélaou ", " Tonga ", " Trinité-et-Tobago ", " Tunisie ", " Turkménistan ", " Turquie ", " Tuvalu ", " Ukraine ", " Uruguay ", " Vanuatu ", " Venezuela ", " Viet Nam ", " Yémen ", " Zambie ", " Zimbabwe "
   ]

  let countries: [String] = [
                             "Abkhazia",
                             "Afghanistan",
                             "Albania",
                             "Algeria",
                             "American Samoa",
                             "Andorra",
                             "Angola",
                             "Anguilla",
                             "Antigua and Barbuda",
                             "Argentina",
                             "Armenia",
                             "Aruba",
                             "Ascension",
                             "Australia",
                             "Australian External Territories",
                             "Austria",
                             "Azerbaijan",
                             "Bahamas",
                             "Bahrain",
                             "Bangladesh",
                             "Barbados",
                             "Barbuda",
                             "Belarus",
                             "Belgium",
                             "Belize",
                             "Benin",
                             "Bermuda",
                             "Bhutan",
                             "Bolivia",
                             "Bosnia and Herzegovina",
                             "Botswana",
                             "Brazil",
                             "British Indian Ocean Territory",
                             "British Virgin Islands",
                             "Brunei",
                             "Bulgaria",
                             "Burkina Faso",
                             "Burundi",
                             "Cambodia",
                             "Cameroon",
                             "Canada",
                             "Cape Verde",
                             "Cayman Islands",
                             "Central African Republic",
                             "Chad",
                             "Chile",
                             "China",
                             "Christmas Island",
                             "Cocos-Keeling Islands",
                             "Colombia",
                             "Comoros",
                             "Congo",
                             "Congo, Dem. Rep. of (Zaire)",
                             "Cook Islands",
                             "Costa Rica",
                             "Ivory Coast",
                             "Croatia",
                             "Cuba",
                             "Curacao",
                             "Cyprus",
                             "Czech Republic",
                             "Denmark",
                             "Diego Garcia",
                             "Djibouti",
                             "Dominica",
                             "Dominican Republic",
                             "East Timor",
                             "Easter Island",
                             "Ecuador",
                             "Egypt",
                             "El Salvador",
                             "Equatorial Guinea",
                             "Eritrea",
                             "Estonia",
                             "Ethiopia",
                             "Falkland Islands",
                             "Faroe Islands",
                             "Fiji",
                             "Finland",
                             "France",
                             "French Antilles",
                             "French Guiana",
                             "French Polynesia",
                             "Gabon",
                             "Gambia",
                             "Georgia",
                             "Germany",
                             "Ghana",
                             "Gibraltar",
                             "Greece",
                             "Greenland",
                             "Grenada",
                             "Guadeloupe",
                             "Guam",
                             "Guatemala",
                             "Guinea",
                             "Guinea-Bissau",
                             "Guyana",
                             "Haiti",
                             "Honduras",
                             "Hong Kong",
                             "Hungary",
                             "Iceland",
                             "India",
                             "Indonesia",
                             "Iran",
                             "Iraq",
                             "Ireland",
                             "Israel",
                             "Italy",
                             "Jamaica",
                             "Japan",
                             "Jordan",
                             "Kazakhstan",
                             "Kenya",
                             "Kiribati",
                             "North Korea",
                             "South Korea",
                             "Kuwait",
                             "Kyrgyzstan",
                             "Laos",
                             "Latvia",
                             "Lebanon",
                             "Lesotho",
                             "Liberia",
                             "Libya",
                             "Liechtenstein",
                             "Lithuania",
                             "Luxembourg",
                             "Macau SAR China",
                             "Macedonia",
                             "Madagascar",
                             "Malawi",
                             "Malaysia",
                             "Maldives",
                             "Mali",
                             "Malta",
                             "Marshall Islands",
                             "Martinique",
                             "Mauritania",
                             "Mauritius",
                             "Mayotte",
                             "Mexico",
                             "Micronesia",
                             "Midway Island",
                             "Micronesia",
                             "Moldova",
                             "Monaco",
                             "Mongolia",
                             "Montenegro",
                             "Montserrat",
                             "Morocco",
                             "Myanmar",
                             "Namibia",
                             "Nauru",
                             "Nepal",
                             "Netherlands",
                             "Netherlands Antilles",
                             "Nevis",
                             "New Caledonia",
                             "New Zealand",
                             "Nicaragua",
                             "Niger",
                             "Nigeria",
                             "Niue",
                             "Norfolk Island",
                             "Northern Mariana Islands",
                             "Norway",
                             "Oman",
                             "Pakistan",
                             "Palau",
                             "Palestinian Territory",
                             "Panama",
                             "Papua New Guinea",
                             "Paraguay",
                             "Peru",
                             "Philippines",
                             "Poland",
                             "Portugal",
                             "Puerto Rico",
                             "Puerto Rico",
                             "Qatar",
                             "Reunion",
                             "Romania",
                             "Russia",
                             "Rwanda",
                             "Samoa",
                             "San Marino",
                             "Saudi Arabia",
                             "Senegal",
                             "Serbia",
                             "Seychelles",
                             "Sierra Leone",
                             "Singapore",
                             "Slovakia",
                             "Slovenia",
                             "Solomon Islands",
                             "South Africa",
                             "South Georgia and the South Sandwich Islands",
                             "Spain",
                             "Sri Lanka",
                             "Sudan",
                             "Suriname",
                             "Swaziland",
                             "Sweden",
                             "Switzerland",
                             "Syria",
                             "Taiwan",
                             "Tajikistan",
                             "Tanzania",
                             "Thailand",
                             "Timor Leste",
                             "Togo",
                             "Tokelau",
                             "Tonga",
                             "Trinidad and Tobago",
                             "Tunisia",
                             "Turkey",
                             "Turkmenistan",
                             "Turks and Caicos Islands",
                             "Tuvalu",
                             "Uganda",
                             "Ukraine",
                             "United Arab Emirates",
                             "United Kingdom",
                             "United States",
                             "Uruguay",
                             "U.S. Virgin Islands",
                             "Uzbekistan",
                             "Vanuatu",
                             "Venezuela",
                             "Vietnam",
                             "Wake Island",
                             "Wallis and Futuna",
                             "Yemen",
                             "Zambia",
                             "Zanzibar",
                             "Zimbabwe"
 
 ]
    var body: some View {

            VStack {
                TextField("Cherchez votre pays ici ...", text:$selectedCountry)
                    .overlay(
                        HStack {
                        Image(systemName: "magnifyingglass")
                            .foregroundColor(.gray)
                            .frame(minWidth: 0, maxWidth: .infinity, alignment: .trailing)
                            .padding(.leading, 8)
                    })
                    .padding(10)
                    .background(RoundedRectangle(cornerRadius: 25).foregroundColor(.white))
                    .font(.footnote)
                    .shadow(color: Color("myblue"), radius: 5, x: 1, y: 9)
                  //  .padding(90)
                List{
                    ForEach(searchResults, id: \.self) { name in
                        Text(name).onTapGesture {
                            selectedCountry = name
                            persoChosen.country = name
                        }
                    }
                }
               .listStyle(PlainListStyle())

                ExtractedText()
            }
        
        }
    
    
    var searchResults: [String] {
        if selectedCountry.isEmpty {
            return proposeCountries
        } else {
            return countries.filter { $0.contains(selectedCountry) }
        }
    }
}

struct CountriesView_Previews: PreviewProvider {
    static var previews: some View {
        CountriesView()
            .previewDevice("iPhone 12 Pro")
    }
}

struct ExtractedText: View {
    var body: some View {
        VStack(alignment: .center){
            Text("Sélectionnez votre pays de destination et validez")
                .foregroundColor(.gray)
                .padding(20)
        }
    }
}
