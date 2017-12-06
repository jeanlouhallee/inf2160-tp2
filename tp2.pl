:- ['Disque.pl'].


% groupe( IdGroupe, NomGroupe, [ Caracteristique ] )
% disque( IdDisque, IdGroupe, TitreDisque)
% chanson( TitreChanson, IdDisque, [ Caracteristique ], Duree )

% Permet de retourner les informations nécéssaires pour l'affichage à partir d'un titre de chanson.
donneInfosSelonChansons(TitresChansons, Infos) :- findall([NomGroupe, TitreDisque, TitreChanson, Duree], (chanson(TitreChanson, IdDisque, _, Duree), member(TitreChanson, TitresChansons), disque(IdDisque, IdGroupe, TitreDisque), groupe(IdGroupe, NomGroupe, _)), Infos).

% Permet de trouver toutes les chansons d'un gorupe
chansonSelonGroupe(IdGroupe, TitreChanson) :- groupe(IdGroupe, _, _), disque(IdDisque, IdGroupe, _), chanson(TitreChanson, IdDisque, _, _).

% Permet de trouver toutes les chansons qui correspondent à une caractéristique.
chansonSelonCaracteristique(Caracteristique, TitreChanson) :- chanson(TitreChanson,_, LC, _), member(Caracteristique, LC).

% Permet de trouver les chansons selon une caractéristique de chanson ET de groupe.
chansonDeGroupeEtCaracteristique(Caracteristique, TitreChanson) :- chansonSelonCaracteristique(Caracteristique, TitreChanson); (groupe(IdGroupe, _, LC), member(Caracteristique, LC), chansonSelonGroupe(IdGroupe, TitreChanson)).

% Permet de trouver les chansons selon plusieurs caractérstiques de chanson ET de groupe.
chansonDeGroupeEtCaracteristiques([Caracteristique], TitresChansons) :- chansonDeGroupeEtCaracteristique(Caracteristique, TitresChansons).
chansonDeGroupeEtCaracteristiques([Caracteristique|R], TitresChansons) :- chansonDeGroupeEtCaracteristique(Caracteristique, TitresChansons), chansonDeGroupeEtCaracteristiques(R, TitresChansons).

% Permet de retourner une liste de titres de chanson selon plusieurs caractéristiques
playlistEt(Caracteristiques, TitresChansons) :- findall(Chanson, chansonDeGroupeEtCaracteristiques(Caracteristiques, Chanson), TitresChansons).

% Permet de retourner plusieurs listes de titres de chanson (chaque liste est un ensemble de ET, mais les listes sont séparés car ce sont des OU).
plusieursPlaylist([Caracteristiques], Playlist) :- playlistEt(Caracteristiques, Playlist), !.
plusieursPlaylist([Caracteristiques|R], Playlist) :-  playlistEt(Caracteristiques, Playlist); plusieursPlaylist(R, Playlist).



%%%% il faut mainteant créer l'union dans les listes retournés par "plusieursPlaylist" (unir les listes et enlever les doublons).
%%%% ensuite il s'agit de transformer cette liste de "TitresChanson" par "[NomGroupe, TitreDisque, TitreChanson, Duree]" grâce à la fonction "donneInfosSelonChansons".
%%%% hésite pas à renommer/modifier des fonctions si tu as des meilleurs idées ;)
%%% je crois que mes fonctions fonctionnent comme il faut, un deuxième oeil pour tester fera du bien!
