
# dbt_duckdb_chinook
dbt-duckdb playground using Chinook dataset.

## Usage

### Install & configure

1. Setup virtual environment:
    ```  
    cd ~
    mkdir .venv
    python3 -m venv .venv/dbt
    ```
2. Configure alias: `alias dbt!="source ~/.venv/dbt/bin/activate"` to your `.bashrc` or `.zshrc`.
3. Install dbt and dbt-duckdb adapter:
    ```
    dbt!
    pip3 install dbt-core
    pip3 install dbt-duckdb
    ```

### Clone the repository and run the project
```
git clone https://github.com/adityawarmanfw/dbt_duckdb_chinook.git
cd dbt_duckdb_chinook
dbt! # start the virtual environment
dbt debug # ensure the dbt profile is setup correctly (add the profile.yml), follow the instruction
dbt deps
dbt run-operation stage_external_sources # this will materialize files in the csvs folder as views
dbt run
dbt test
dbt docs generate
dbt docs serve
```

