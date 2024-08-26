-- What is each pokemon's primary type?
select p.name as pokemon_name, t.name as type_name 
from pokemons p 
join types t 
on p.primary_type = t.id

-- What is Rufflet's secondary type?
select t2.name as secondary_type
from pokemons as p
left join types as t2 on p.secondary_type = t2.id
where p.name = 'Rufflet';

+----------------+
| secondary_type |
+----------------+
| Flying         |
+----------------+

-- What are the names of the pokemon that belong to the trainer with trainerID 303?
select p.name as pokemon_name
from pokemons as p
join pokemon_trainer as pt on p.id = pt.pokemon_id
where pt.trainerid = 303;

+--------------+
| pokemon_name |
+--------------+
| Wailord      |
| Vileplume    |
+--------------+

-- How many pokemon have a secondary type Poison
select count(*) as poison_count 
from pokemons as p 
join types as t 
on p.secondary_type = t.id 
where t.name = 'Poison';

-- What are all the primary types and how many pokemon have that type?
select t.name as primary_type,
count(p.id) as pokemon_count
from pokemons as p
join types as t on p.primary_type = t.id
group by t.name;

+--------------+---------------+
| primary_type | pokemon_count |
+--------------+---------------+
| Normal       |            90 |
| Water        |            95 |
| Grass        |            59 |
| Rock         |            38 |
| Fire         |            38 |
| Ground       |            29 |
| Poison       |            27 |
| Bug          |            61 |
| Electric     |            35 |
| Dragon       |            22 |
| Steel        |            19 |
| Dark         |            24 |
| Fighting     |            25 |
| Psychic      |            38 |
| Ghost        |            19 |
| Fairy        |            14 |
| Ice          |            22 |
| Flying       |             1 |
+--------------+---------------+


-- How many pokemon at level 100 does each trainer with at least one level 100 pokemone have? 
-- (Hint: your query should not display a trainer

select trainerid, count(pokemon_id) as level_100_pokemon_count
from pokemon_trainer
where pokelevel = 100
group by trainerid;


-- How many pokemon only belong to one trainer and no other?

select count(*) as count_result
from (
    select pokemon_id
    from pokemon_trainer
    group by pokemon_id
    having count(trainerid) = 1
) as one_trainer_pokemon_count;

+--------------+
| count_result |
+--------------+
|           13 |
+--------------+