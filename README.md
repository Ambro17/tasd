# TASD
Proyecto de TASD probando la base de datos [EdgeDB](https://www.edgedb.com/)

## Instructions
See https://www.edgedb.com/docs/guides/quickstart


## Dev setup
0. Create venv with python3.10
1. `pip install -r requirements.txt`
2. Start instance: `edgedb instance start tasd`
3. 


### Recommended setup
IDE: Vscode with edgedb extension.


```
error: type 'scaloneta::local_datetime' does not exist
  ┌─ ./dbschema/scaloneta.esdl:6:31
  │
6 │     required property date -> local_datetime;
  │                               ^^^^^^^^^^^^^^ error

edgedb error: cannot proceed until .esdl files are fixed
```