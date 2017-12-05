
% groupe( IdGroupe, NomGroupe, [ Caracteristique ] )
groupe( m83, "M83", [ alternatif, indie, rock, electronique, ambient ] ).
groupe( ayreon, "Ayreon", [ heavy_metal, neo_prog, prog_rock, progressive_metal ] ).
groupe( skrillex, "Skrillex", [ dubstep, edm, club, dance ] ).
groupe( fla, "Front Line Assembly", [ club, scary ] ).
groupe( fabrikc, "Fabrik C", [ electronique ] ).

% disque( IdDisque, IdGroupe, TitreDisque)
disque( bdhu, m83, "Before the Dawn Heals Us" ).
disque( caustic, fla, "Caustic Grip" ).
disque( tactical, fla, "Tactical Neural Implant" ).
disque( gleichstrom, fabrikc, "Gleichstrom" ).
disque( a01011001d1, ayreon, "01011001 (disk 1)" ).
disque( a01011001d2, ayreon, "01011001 (disk 2)" ).
disque( itec1, ayreon, "into the Electric Castle (disk 1)" ).
disque( itec2, ayreon, "into the Electric Castle (disk 2)" ).
disque( recess, skrillex, "Recess" ).
disque( gsc, fla, "Gashed Senses & Crossfire" ).

% chanson( TitreChanson, IdDisque, [ Caracteristique ], Duree )
chanson( "Final Impact", tactical, [intense, hypnotique], 362 ).
chanson( "The Blade", tactical, [intense, energetique], 353 ).
chanson( "Mindphaser", tactical, [intense, volatile], 304 ).
chanson( "Remorse", tactical, [intense, agressif], 344 ).
chanson( "Bio-Mechanic", tactical, [hypnotique, volatile, agressif], 326 ).
chanson( "Outcast", tactical, [hypnotique, volatile], 322 ).
chanson( "Gun", tactical, [volatile, agressif], 379 ).
chanson( "Lifeline", tactical, [intense, energetique], 307 ).
chanson( "Resist", caustic, [dramatique, intense], 335 ).
chanson( "Victim", caustic, [dramatique, atmosphere], 306 ).
chanson( "Overkill", caustic, [atmosphere], 306 ).
chanson( "Forge", caustic, [intense, volatile], 261 ).
chanson( "Provision", caustic, [dramatique, volatile], 369 ).
chanson( "Force Fed", caustic, [dramatique, energetique, intense], 281 ).
chanson( "Iceolate", caustic, [volatile, intense], 313 ).
chanson( "Threshold", caustic, [hypnotique], 311 ).
chanson( "Mental Distortion", caustic, [agressif, intense], 410 ).
chanson( "The Chair", caustic, [agressif, atmosphere], 206 ).
chanson( "Moon Child", bdhu, [indulgent, epic], 278 ).
chanson( "Don't Save Us from the Flames", bdhu, [epic], 255 ).
chanson( "In the Cold I'm Standing", bdhu, [cerebrale, epic], 248 ).
chanson( "Farewell", bdhu, [indulgent, epic], 332 ).
chanson( "Fields, Shorelines and Hunters", bdhu, [reflectif, epic], 150 ).
chanson( "*", bdhu, [], 164 ).
chanson( "I Guess I'm Floating", bdhu, [rafine, indulgent], 117 ).
chanson( "Teen Angst", bdhu, [epic], 303 ).
chanson( "Can't Stop", bdhu, [epic], 140 ).
chanson( "Safe", bdhu, [epic], 293 ).
chanson( "Let Men Burn Stars", bdhu, [theatrale, rafine], 116 ).
chanson( "Car Chase Terror", bdhu, [theatrale, indulgent, epic], 231 ).
chanson( "Slight Night Shiver", bdhu, [epic, theatrale], 124 ).
chanson( "A Guitar and a Heart", bdhu, [epic, indulgent], 286 ).
chanson( "Lower Your Eyelids to Die With the Sun", bdhu, [epic], 637 ).
chanson( "Maschinenpuls", gleichstrom, [agressive, intense], 95 ).
chanson( "Paranormal", gleichstrom, [agressive, cerebrale], 330 ).
chanson( "Mensch", gleichstrom, [agressive, intense, cerebrale], 218 ).
chanson( "Hexenjagd", gleichstrom, [agressive], 2 ).
chanson( "Das Spiel", gleichstrom, [agressive, intense], 256 ).
chanson( "Nethunter", gleichstrom, [agressive], 422 ).
chanson( "Wahn", gleichstrom, [agressive, intense], 214 ).
chanson( "Leidensweg", gleichstrom, [agressive, cerebrale], 225 ).
chanson( "Der zweite Tod", gleichstrom, [agressive, intense, cerebrale], 213 ).
chanson( "Notfall", gleichstrom, [agressive], 249 ).
chanson( "Schmerz", gleichstrom, [agressive, intense], 209 ).
chanson( "Passivtod", gleichstrom, [agressive], 258 ).
chanson( "Weltenreise", gleichstrom, [agressive, intense, cerebrale], 210 ).
chanson( "Hexenjagd", gleichstrom, [agressive, epic], 216 ).
chanson( "No Limit", gsc, [intense, epic], 295 ).
chanson( "Antisocial", gsc, [intense, agressive], 273 ).
chanson( "Hypocrisy", gsc, [epic, agressive], 229 ).
chanson( "Shutdown", gsc, [epic], 327 ).
chanson( "Prayer", gsc, [intense], 215 ).
chanson( "Digital Tension Dementia", gsc, [agressive], 287 ).
chanson( "Big Money", gsc, [hypnotique], 255 ).
chanson( "Bloodsport", gsc, [intense], 357 ).
chanson( "Foolsgame", gsc, [agressive], 218 ).
chanson( "Sedation", gsc, [epic, agressive], 238 ).
chanson( "Age of Shadows", a01011001d1, [theatrical, dramatique], 647 ).
chanson( "Comatose", a01011001d1, [theatrical, dramatique], 266 ).
chanson( "Liquid Eternity", a01011001d1, [theatrical, dramatique, atmospherique], 489 ).
chanson( "Connect the Dots", a01011001d1, [atmospherique], 252 ).
chanson( "Beneath the Waves", a01011001d1, [atmospherique, dramatique], 506 ).
chanson( "Newborn Race", a01011001d1, [atmospherique, dramatique], 469 ).
chanson( "Ride the Comet", a01011001d1, [atmospherique, dramatique], 209 ).
chanson( "Web of Lies", a01011001d1, [atmospherique, energetique], 270 ).
chanson( "The Fifth Extinction", a01011001d2, [theatrical, dramatique], 629 ).
chanson( "Waking Dreams", a01011001d2, [theatrical, dramatique, energetique], 391 ).
chanson( "The Truth is in Here", a01011001d2, [energetique], 312 ).
chanson( "Unnatural Selection", a01011001d2, [theatrical, dramatique], 435 ).
chanson( "River of Time", a01011001d2, [theatrical, dramatique, energetique], 264 ).
chanson( "E=MC2", a01011001d2, [energetique], 350 ).
chanson( "The Sixth Extinction", a01011001d2, [theatrical, dramatique], 738 ).
chanson( "Welcome in the New Dimension", itec1, [energetique, theatrical], 186 ).
chanson( "Isis and Osiris: Let the Journey Begins", itec1, [theatrical, dramatique], 671 ).
chanson( "AmazingFlight", itec1, [theatrical, dramatique], 615 ).
chanson( "Time Beyond Time", itec1, [theatrical, dramatique], 364 ).
chanson( "The Decision Tree", itec1, [energetique, dramatique], 383 ).
chanson( "Tunnel of Light", itec1, [theatrical, dramatique], 245 ).
chanson( "Across the Rainbow", itec1, [energetique], 379 ).
chanson( "The Garden of Emotions", itec2, [theatrical, dramatique], 581 ).
chanson( "Valley of the Queens", itec2, [theatrical, dramatique], 144 ).
chanson( "The Castle Hall", itec2, [energetique, dramatique], 349 ).
chanson( "Tower of Hope", itec2, [theatrical, dramatique], 293 ).
chanson( "Cosmic Fusion", itec2, [theatrical, dramatique, energetique], 447 ).
chanson( "The Mirror Maze", itec2, [energetique], 394 ).
chanson( "Evil Devolution", itec2, [theatrical, dramatique], 390 ).
chanson( "The Two Gates", itec2, [theatrical, dramatique], 388 ).
chanson( "Forever of the Stars", itec2, [dramatique, theatrical], 122 ).
chanson( "Another Time, Another Space", itec2, [theatrical, dramatique], 320 ).
chanson( "All is Fair In Love and Brostep", recess, [], 249 ).
chanson( "Recess", recess, [amusant, hypnotique], 237 ).
chanson( "Stranger", recess, [hypnotique], 289 ).
chanson( "Try It Out", recess, [amusant, agressif], 229 ).
chanson( "Coast Is Clear", recess, [amusant, hypnotique], 243 ).
chanson( "Dirty Vibe", recess, [hypnotique, agressif], 206 ).
chanson( "Ragga Bomb", recess, [hypnotique], 258 ).
chanson( "Doompy Poomp", recess, [amusant, hypnotique], 204 ).
chanson( "Fuck That", recess, [hypnotique, amusant, agressif], 230 ).
chanson( "Easy My Mind", recess, [agressif], 302 ).
chanson( "Fire Away", recess, [amusant, hypnotique], 343 ).
