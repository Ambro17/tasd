CREATE MIGRATION m1qnv5a46jkkmvnyy457ztnzu2ueinkpod3yjn7zhgvq63f7zwk2ka
    ONTO m1j2tcgnrsl5satp7n3sfg3jsqekkcmhvtuswwkjajtu334fbzus4a
{
  CREATE MODULE scaloneta IF NOT EXISTS;
  CREATE TYPE scaloneta::Club {
      CREATE REQUIRED PROPERTY country -> std::str;
      CREATE REQUIRED PROPERTY name -> std::str;
  };
  CREATE TYPE scaloneta::Player {
      CREATE LINK plays_at -> scaloneta::Club;
      CREATE REQUIRED PROPERTY age -> std::int16;
      CREATE REQUIRED PROPERTY name -> std::str;
      CREATE REQUIRED PROPERTY surname -> std::str;
      CREATE PROPERTY full_name := ((((.name ++ ' ') ++ .surname) IF EXISTS (.surname) ELSE .name));
  };
  ALTER TYPE scaloneta::Club {
      CREATE MULTI LINK players := (scaloneta::Club.<plays_at[IS scaloneta::Player]);
  };
  CREATE SCALAR TYPE scaloneta::Stadiums EXTENDING enum<Lusail, `Stadium 974`>;
  CREATE SCALAR TYPE scaloneta::Teams EXTENDING enum<`Arabia Saudita`, Mexico, Polonia>;
  CREATE TYPE scaloneta::Game {
      CREATE MULTI LINK players -> scaloneta::Player;
      CREATE REQUIRED PROPERTY date -> cal::local_datetime;
      CREATE REQUIRED PROPERTY rival -> scaloneta::Teams;
      CREATE REQUIRED PROPERTY stadium -> scaloneta::Stadiums;
  };
};
