module scaloneta {
  scalar type Stadiums extending enum<"Lusail", "Stadium 974">;
  scalar type Teams extending enum<"Arabia Saudita", "Mexico", "Polonia">;

  type Game {
    required property date -> cal::local_datetime;
    required property stadium -> Stadiums;
    required property rival -> Teams;

    multi link players -> Player;
  }

  type Player {
    required property name -> str;
    required property surname -> str;
    required property age -> int16;

    property full_name := .name ++ ' ' ++ .surname if exists .surname else .name;

    link plays_at -> Club;
  }

  type Club {
    required property name -> str {
        constraint exclusive;
    };
    required property country -> str; # Could be enum too?

    multi link players := Club.<plays_at[IS Player];
  }

};