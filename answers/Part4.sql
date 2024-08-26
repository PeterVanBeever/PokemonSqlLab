Directions: Write a query that returns the following collumns:

select 
    p.name as Pokemon_Name,
    t.trainername as Trainer_Name,
    pt.pokelevel as level,
    pt1.name as Primary_Type,
    pt2.name as Secondary_Type
from pokemon_trainer as pt
join pokemons as p 
    on pt.pokemon_id = p.id
join trainers as t 
    on pt.trainerid = t.trainerid
join types as pt1 
    on p.primary_type = pt1.id
left join types as pt2 
    on p.secondary_type = pt2.id
order by pt.pokelevel asc;


-- Birdboy has level 100, 6 pokemons trained, and no missing secondary types
-- Birdboy's name also appears more in this method of ranking

 trainerID | trainername                | total_pokemons_trained | null_secondary_type_count |
+-----------+----------------------------+------------------------+---------------------------+
|      1270 | Cool♀                      |                      6 |                         0 |
|      2251 | Birdboy                    |                      6 |                         0 |
|      2254 | Birdboy                    |                      6 |                         0 |
|      2255 | Birdboy                    |                      6 |                         0 |
|      2256 | Birdboy                    |                      6 |                         0 |
|      2257 | Birdboy                    |                      6 |                         0 |
|      2258 | Bird Keeper Adam           |                      6 |                         0 |
|      2259 | Bird Keeper Adam           |                      6 |                         0 |
|      4096 | Cool♀                      |                      6 |                         0 |
|      5077 | Birdboy                    |                      6 |                         0 |
|      5080 | Birdboy                    |                      6 |                         0 |
|      5081 | Birdboy                    |                      6 |                         0 |
|      5082 | Birdboy                    |                      6 |                         0 |
|      5083 | Birdboy                    |                      6 |                         0 |
|      5084 | Bird Keeper Adam           |                      6 |                         0 |
|      5085 | Bird Keeper Adam           |                      6 |                         0 |
|      6805 | Fisherman Chase            |                      6 |                         0 |
|      7374 | Hunter♂ Kolot              |                      6 |                         0 |
|      1266 | Cool♀                      |                      6 |                         1 |
|      1267 | Cool♀                      |                      6 |                         1 |
|      1312 | Cooltrainer♂ Forgon        |                      6 |                         1 |
|      1567 | Athlete♂ Naga              |                      6 |                         1 |
|      2250 | Birdboy                    |                      6 |                         1 |
|      4092 | Cool♀                      |                      6 |                         1 |
|      4093 | Cool♀                      |                      6 |                         1 |