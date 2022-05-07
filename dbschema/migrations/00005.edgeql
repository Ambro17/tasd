CREATE MIGRATION m1x6migue4gi6rg7yns3sharmez7nxq7qpapk5ydchju5435zddujq
    ONTO m1qnv5a46jkkmvnyy457ztnzu2ueinkpod3yjn7zhgvq63f7zwk2ka
{
  ALTER TYPE scaloneta::Club {
      ALTER PROPERTY name {
          CREATE CONSTRAINT std::exclusive;
      };
  };
};
