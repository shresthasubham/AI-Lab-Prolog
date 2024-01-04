% Facts
has_fur(dog).
has_feathers(bird).
lays_eggs(bird).
has_scales(fish).
has_gills(fish).

% Rules
mammal(X) :- has_fur(X).
bird(X) :- has_feathers(X), lays_eggs(X).
fish(X) :- has_scales(X), has_gills(X).

