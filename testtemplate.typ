#import "template/polytech.typ": *

#show: conf(theme: blue)[

  #titlepage(
    logo: image("images/logo_cinetour.png"),
    authors: ("Maël Cornec", "Clément Reniers"),
    title: "Démonstration Template Typst",
  )

  = Introduction

  #lorem(50)

  = Tableaux Stylisés

  #rounded-table(
    ("Colonne 1", "Colonne 2"),
    (("A", "B"), ("C", "D")),
  )

  #pagebreak()

  = Affichage d'images

  #rounded-image(image("images/example-image.png"), caption: "Schéma du parcours utilisateur")

  #rounded-image(image("images/class_diagram.png"), caption: "Diagramme de classe", size: 75%)

  #rounded-image(image("images/sequence_diagram.png"), caption: "Diagramme de séquence", size: 75%)

  = Encadrés

  #block-left(title: "Encadré Gauche")[Contenu illustratif d’un encadré aligné à gauche.]

  #block-right(
    title: "Encadré Droit",
  )[Start with ```c #include <stdlib.h> ```, compute ```py [x**2 for x in range(0, 8)] ```, then clean up with ```sh sudo rm -rf / ```.]

  #block-full(title: "Encadré Plein Largeur")[Texte démonstratif pour un bloc pleine largeur.]

  = Code source

  // #set raw(theme: "")

  #block-left(title: "Exemple R")[
    ```r
    > t.test(tab$croissance ~ tab$bassin, var.equal = TRUE)
    ```
  ]

  #block-right(title: "Exemple C++")[
    ```cpp
    #include <iostream>
    using namespace std;
    int main() {
        if (i != 0) {
            cout << "Hello World" << endl;
        }
        return 0;
    }
    ```
  ]

  #block-full(title: "Exemple Python")[
    ```py
    print("Hello, World!")
    ```
  ]

  = Hyperliens

  Voici un lien vers #link("https://www.openai.com", "OpenAI")#footnote("Ceci est une note de bas de page").

  = Citations

  Comme l'indique @doe2020exemple, ce modèle est efficace.

  = Autres utilisations

  == Triptique

  #columns(3, gutter: 6pt)[
    #block-full(title: "Curieux")[
      - Recherche illimité de localisation de décors de films
      #c[*0€ / mois*]
    ]
    #colbreak()
    #block-full(title: "Cinéphile")[
      - Tout dans Gratuit
      - Pas de pubs
      - Recherche avancée
      - Information exclusive
      #c[*10€ / mois*]
    ]
    #colbreak()
    #block-full(title: "Voyageur")[
      - Tout dans Cinéphile
      - Expérience de voyage unique à thème selon un film
      #c[*A partir de 200€*]
    ]
  ]

  == Autres tableaux

  #rounded-table(
    ([*Fonctionnalités*], [*Cinétour*], [*SetJetters*], [*Movie-Locations.com*]),
    (
      [*Type de plateforme*],
      "Site Web",
      "Application Mobile",
      "Site Web",
      [*Base de données des lieux de tournage*],
      "Oui, avec fiches détaillées, photos, vidéos, carte interactive",
      "Oui, avec carte interactive et recherche par film ou lieu",
      "Oui, avec descriptions textuelles et photos",
      [*Itinéraires personnalisés*],
      "Oui, création de circuits thématiques",
      "Non spécifié",
      "Non",
      [*Fonctionnalité communautaire*],
      "Oui, forums, avis, partages d’expériences",
      "Oui, partage de photos avec ShotSync",
      "Non",
      [*Offre premium sans publicité*],
      "Oui, avec fonctionnalités avancées",
      "Non spécifié",
      "Non",
      [*Organisation de voyages sur mesure*],
      "Oui, en partenariat avec des agences de voyage",
      "Non",
      "Non",
      [*Partenariats stratégiques*],
      "Oui, avec Letterboxd et agences de voyage",
      "Non spécifié",
      "Non",
      [*Monétisation*],
      "Publicité, abonnements premium, commissions sur voyages",
      "Non spécifié",
      "Publicité",
      [*Ciblage des cinéphiles*],
      "Oui, avec intégration de préférences cinématographiques",
      "Oui, recherche par film, franchise
    [*Fonctionnalité communautaire*],, acteur",
      "Oui, recherche par film, lieu, acteur",
    ),
  )

  #pagebreak()

  #page(margin: 0pt)[#c[#image("images/class_diagram.png")]]


  #bibliography("references.bib", title: "Bibliographie")

]
