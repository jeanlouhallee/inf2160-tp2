:- ['Disque.pl'].


% groupe( IdGroupe, NomGroupe, [ Caracteristique ] )
% disque( IdDisque, IdGroupe, TitreDisque)
% chanson( TitreChanson, IdDisque, [ Caracteristique ], Duree )

donneInfosSelonChanson(TitreChanson, Infos) :- findall([NomGroupe, TitreDisque, TitreChanson, Duree],(chanson(TitreChanson, IdDisque, _, Duree), disque(IdDisque, IdGroupe, TitreDisque), groupe(IdGroupe, NomGroupe, _)), Infos).

chansonSelonGroupe(IdGroupe, Info) :- groupe(IdGroupe, _, _), disque(IdDisque, IdGroupe, _), chanson(TitreChanson, IdDisque, _, _), donneInfosSelonChanson(TitreChanson, Info).

chansonSelonCaracteristique(Caracteristique, Info) :- chanson(TitreChanson,_, LC, _), member(Caracteristique, LC), donneInfosSelonChanson(TitreChanson, Info).

chansonsDeGroupeEtCaracteristique(Caracteristique, Info) :- chansonSelonCaracteristique(Caracteristique, Info); (groupe(IdGroupe, _, LC), member(Caracteristique, LC), chansonSelonGroupe(IdGroupe, Info)).

chansonsDeGroupeEtCaracteristiques([Caracteristique], Info) :- chansonsDeGroupeEtCaracteristique(Caracteristique, Info).
chansonsDeGroupeEtCaracteristiques([Caracteristique|R], Info) :- chansonsDeGroupeEtCaracteristique(Caracteristique, Info), chansonsDeGroupeEtCaracteristiques(R, Info).

playlistEt(Caracteristiques, Infos) :- findall(Chanson, chansonsDeGroupeEtCaracteristiques(Caracteristiques, Chanson), Infos).

liste([Caracteristique], Playlist) :- playlistEt(Caracteristique, Playlist), !.
liste([Caracteristique|R], Playlist) :- playlistEt(Caracteristique, Playlist); liste(R, Playlist).
