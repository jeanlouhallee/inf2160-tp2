:- ['Disque.pl'].


% groupe( IdGroupe, NomGroupe, [ Caracteristique ] )
% disque( IdDisque, IdGroupe, TitreDisque)
% chanson( TitreChanson, IdDisque, [ Caracteristique ], Duree )

chansonSelonGroupe(IdGroupe, TitreChanson) :- groupe(IdGroupe, _, _), disque(IdDisque, IdGroupe, _), chanson(TitreChanson, IdDisque, _, _).
chansonSelonCaracteristique(Caracteristique, TitreChanson) :- chanson(TitreChanson,_, LC, _), member(Caracteristique, LC).
chansonsDeGroupeEtCaracteristique(Caracteristique, Chanson) :- chansonSelonCaracteristique(Caracteristique, Chanson); (groupe(IdGroupe, _, LC), member(Caracteristique, LC), chansonSelonGroupe(IdGroupe, Chanson)).

chansonsDeGroupeEtCaracteristiques([Caracteristique], Chanson) :- chansonsDeGroupeEtCaracteristique(Caracteristique, Chanson).
chansonsDeGroupeEtCaracteristiques([Caracteristique|R], Chanson) :- chansonsDeGroupeEtCaracteristique(Caracteristique, Chanson), chansonsDeGroupeEtCaracteristiques(R, Chanson).

donneInfosSelonChanson(TitreChanson, Infos) :- findall((NomGroupe, TitreDisque, TitreChanson, Duree),(chanson(TitreChanson, IdDisque, _, Duree), disque(IdDisque, IdGroupe, TitreDisque), groupe(IdGroupe, NomGroupe, _)), Infos).
