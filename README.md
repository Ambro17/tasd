# TASD
Proyecto de TASD probando la base de datos [EdgeDB](https://www.edgedb.com/)

## Prerequisites
Install edgedb (1) and create and activate a python virtualenv (2)

1. Download edgedb `curl https://sh.edgedb.com --proto '=https' -sSf1 | sh` (Details [here](https://www.edgedb.com/docs/guides/quickstart))
2. Create and activate venv with python3.10 `python3.10 venv -m .venv && source .venv/bin/activate`. Note: This only works on linux and mac. Google how to create and activate it in windows

## Usage
1. Install project dependencies `python3.10 -m pip install -r requirements.txt`
2. Start edgedb database instance: `edgedb instance start tasd`
3. Run the inserts `edgedb < inserts.eql`
4. Run the selects `edgedb < selects.eql`
5. Profit 🥂 💸

### Recommended setup
IDE: Vscode with edgedb extension.


## Errors are descriptive!
```
error: type 'scaloneta::local_datetime' does not exist
  ┌─ ./dbschema/scaloneta.esdl:6:31
  │
6 │     required property date -> local_datetime;
  │                               ^^^^^^^^^^^^^^ error

edgedb error: cannot proceed until .esdl files are fixed
```