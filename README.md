# ufemism-laddie
Coupling framework between Ufemism and Laddie

### Installation

#### Ufemism
```
nix --extra-experimental-features flakes --extra-experimental-features nix-command run github:IMAU-paleo/UFEMISM2.0/main?dir=tools/flake 2 <config_file>
```

#### Laddie
- Clone repository:  `https://github.com/erwinlambert/laddie`
- Install anaconda or miniconda: `https://www.anaconda.com/download`
- Install virtual environment:
```
conda env create -f laddie/doc/laddie_system.yml -n laddie
```

### Structure
Make sure your repositories are located like this:
```
somedir/
| ufemism-laddie
| UFEMISM2.0
| laddie
```

### Run the models

#### Spin up UFEMISM
#### Spin up LADDIE
```
./laddie_spinup.sh
```
#### Run UFEMISM
#### Call LADDIE
Use `config-files/laddie/config_CD_leg.toml`