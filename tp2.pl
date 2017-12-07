:- ['Disque.pl'].

% Alexis Millette - MILA24099409
% Jean-Lou Hallée - HALJ05129309
% Realise dans SWI Prolog

% groupe( IdGroupe, NomGroupe, [ Caracteristique ] )
% disque( IdDisque, IdGroupe, TitreDisque)
% chanson( TitreChanson, IdDisque, [ Caracteristique ], Duree )

% Permet de retourner les informations nécéssaires pour l'affichage à partir d'un titre de chanson.
donneInfosSelonChansons(TitresChansons, Infos) :- findall([NomGroupe, TitreDisque, TitreChanson, Duree], (chanson(TitreChanson, IdDisque, _, Duree),
																											member(TitreChanson, TitresChansons),
																											disque(IdDisque, IdGroupe, TitreDisque),
																											groupe(IdGroupe, NomGroupe, _)), Infos).

% Permet de trouver toutes les chansons d'un gorupe
chansonSelonGroupe(IdGroupe, TitreChanson) :- groupe(IdGroupe, _, _),
											disque(IdDisque, IdGroupe, _),
											chanson(TitreChanson, IdDisque, _, _).

% Permet de trouver toutes les chansons qui correspondent à une caractéristique.
chansonSelonCaracteristique(Caracteristique, TitreChanson) :- chanson(TitreChanson,_, LC, _),
															member(Caracteristique, LC).

% Permet de trouver les chansons selon une caractéristique de chanson ET de groupe.
chansonDeGroupeEtCaracteristique(Caracteristique, TitreChanson) :- chansonSelonCaracteristique(Caracteristique, TitreChanson);
																(groupe(IdGroupe, _, LC), member(Caracteristique, LC),
																chansonSelonGroupe(IdGroupe, TitreChanson)).

% Permet de trouver les chansons selon plusieurs caractérstiques de chanson ET de groupe.
chansonDeGroupeEtCaracteristiques([Caracteristique], TitresChansons) :- chansonDeGroupeEtCaracteristique(Caracteristique, TitresChansons).
chansonDeGroupeEtCaracteristiques([Caracteristique|R], TitresChansons) :- chansonDeGroupeEtCaracteristique(Caracteristique, TitresChansons),
																		chansonDeGroupeEtCaracteristiques(R, TitresChansons).

% Permet de retourner une liste de titres de chanson selon plusieurs caractéristiques
playlistEt(Caracteristiques, TitresChansons) :- findall(Chanson, chansonDeGroupeEtCaracteristiques(Caracteristiques, Chanson), TitresChansons).

% Permet de retourner plusieurs listes de titres de chanson (chaque liste est un ensemble de ET, mais les listes sont séparés car ce sont des OU)
plusieursPlaylist([Caracteristiques | []], Playlist) :- playlistEt(Caracteristiques, Playlist), !.
plusieursPlaylist([Caracteristiques|R], Playlist) :- playlistEt(Caracteristiques, PlaylistEt),
													plusieursPlaylist(R, PlaylistAutre),
													append(PlaylistEt, PlaylistAutre, Playlist).
% Retourne la liste d'informations sur les chansons trouvees selon les caracteristiques donnees
liste(Caracteristiques, Playlist) :- plusieursPlaylist(Caracteristiques, PlaylisteDoublons),
											trierListe(PlaylisteDoublons, PlaylistSansDoublons),
											donneInfosSelonChansons(PlaylistSansDoublons, Playlist).

% Permet de trier la liste en retirant les doublons
trierListe([Titre|Liste], SansDoublons) :- trierListe(Liste, ListeIntermediaire), !,
											filterListe(Titre, ListeIntermediaire, SansDoublons), !.
trierListe([Titre|[]], SansDoublons) :- append([Titre], [], SansDoublons).

% Permet de fusionner Titre et ListeIntermediaire dans SansDoublons
filterListe(Titre,ListeIntermediaire,SansDoublons) :- \+member(Titre, ListeIntermediaire),
													append([Titre], ListeIntermediaire, SansDoublons).
filterListe(_,ListeIntermediaire,SansDoublons):- append([], ListeIntermediaire, SansDoublons).
