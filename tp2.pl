:- ['Disque.pl'].


% groupe( IdGroupe, NomGroupe, [ Caracteristique ] )
% disque( IdDisque, IdGroupe, TitreDisque)
% chanson( TitreChanson, IdDisque, [ Caracteristique ], Duree )

% liste([[Caracteristique]], [[NomGroupe, TitreDisque, TitreChanson, Duree]]).

% uneCaracteristique(C, L) :- chanson(TitreChanson, IdDisque, LC1, _), member(C, LC1), disque(IdDisque, IdGroupe, _), groupe(IdGroupe, _, LC2), member(C, LC2), L is TitreChanson.







uneCaracteristique(Caracteristique, TitreChanson) :- chanson(TitreChanson,_,LC,_), member(Caracteristique, LC).

chansonGroupeSelonCaracteristique(IdGroupe, Caracteristique, TitreChanson) :-((chanson(TitreChanson, IdDisque, LCC, _), member(Caracteristique, LCC)); (groupe(IdGroupe,_ , LCG), member(Caracteristique, LCG))), disque(IdDisque, IdGroupe, _).

toutesLesChansonsDunGroupe(IdGroupe, Chansons) :- findall((IdGroupe, TitreChanson), (groupe(IdGroupe, _, _), disque(IdDisque, IdGroupe, _), chanson(TitreChanson, IdDisque, _, _)), Chansons).

toutesLesChansonsSelonCaracteristique(Caracteristique, Chansons) :- findall(TitreChanson,(chanson(TitreChanson,_, LC, _), member(Caracteristique, LC)),Chansons).
