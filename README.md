# Salesforce dlt-dbt Package

### Overview
The Salesforce dlt-dbt package offers data models to help you transform and analyze Salesforce data. It's designed to integrate seamlessly with the dlt Salesforce pipeline, which extracts and loads Salesforce data into your data warehouse.

### Who is this for?
This package is perfect for dbt users who want to integrate Salesforce data into their analytics workflows without building models from scratch.


### Key Features
- **Staging Models:** Clean and prepare raw HubSpot data for downstream analysis.
- **Mart Models:** Pre-built dimension and fact tables for key HubSpot entities like contacts, deals, companies, and tickets.
- **Incremental Loading:** Supports incremental data processing to optimize performance.
- **Easy Integration:** Designed to work out-of-the-box with the dlt HubSpot pipeline.

### Setup Instructions

#### Prerequisites
- dbt Core installed in your environment.
- Access to a supported data warehouse: BigQuery, Snowflake, Redshift, Athena, or PostgreSQL.
- The dlt HubSpot pipeline is set up and running.

### Step 1: Set Up the dlt HubSpot Pipeline
1. **Install dlt:**
   ``` 
   pip install dlt
   ```
2. **Configure the Pipeline:**
   Follow the dlt HubSpot pipeline documentation to set up your pipeline. Ensure you have your HubSpot API key and destination credentials configured.

3. **Run the Pipeline:**
   Extract and load data from HubSpot into your data warehouse by running the pipeline.

### Step 2: Install and Configure the dbt Project

1. Install the Salesforce dbt package into your dbt environment.
2. Configure your 'dbt_project.yml' file with the appropriate connection details for your data warehouse.
3. Ensure the data from your dlt HubSpot pipeline is available in your warehouse.

This is how the tables in dbt package look like:
```text
dbt_salesforce_datamodel/
├── analysis/
├── macros/
├── models/
│   ├── marts/
│   │   ├── dim__dlt_loads.sql
│   │   ├── dim__account.sql
│   │   ├── dim__campaign_member.sql
│   │   ├── dim__campaign.sql
│   │   ├── dim__contact.sql
│   │   ├── dim__lead.sql
│   │   ├── dim__opportunity_contact_role.sql
│   │   ├── dim__opportunity_line_item.sql
│   │   ├── dim__pricebook_2.sql
│   │   ├── dim__pricebook_entry.sql
│   │   ├── dim__product_2.sql
│   │   ├── dim__sf_user.sql
│   │   ├── dim__user_role.sql
│   │   ├── fact__event.sql
│   │   ├── fact__opportunity.sql
│   │   ├── fact__task.sql
│   ├── staging/
│   │   ├── stg__dlt_loads.sql
│   │   ├── stg__account.sql
│   │   ├── stg__campaign_member.sql
│   │   ├── stg__campaign.sql
│   │   ├── stg__contact.sql
│   │   ├── stg__lead.sql
│   │   ├── stg__opportunity_contact_role.sql
│   │   ├── stg__opportunity_line_item.sql
│   │   ├── stg__opportunity.sql
│   │   ├── stg__pricebook_2.sql
│   │   ├── stg__pricebook_entry.sql
│   │   ├── stg__product_2.sql
│   │   ├── stg__sf_user.sql
│   │   ├── stg__task.sql
│   │   ├── stg__event.sql
│   │   ├── stg__user_role.sql
│   │   ├── sources.yml
│   ├── dlt_active_load_ids.sql # Used for incremental processing of data
│   └── dlt_processed_load.sql # Used for incremental processing of data
├── tests/
├── dbt_project.yml
└── requirements.txt
```

### Step 3: Run dbt
Execute the dbt models to transform the raw Salesforce data into useful tables:

```sh
dbt run
```

>You can use the 'run_salesforce_dbt.py' script to execute your dbt transformations and load the results into a 
>new dataset named `<original-dataset>_transformed` and runs the dbt tests.To use, please ensure you configure 
>your dlt pipeline name and destination correctly.

To check for issues, run the dbt tests:

```sh
dbt test
```

### Customization
While this package provides a solid foundation, you can customize it to suit your specific needs:

- Modify the models to align with your business logic.
- Add relationships between tables by modifying your dlt pipeline schema.

> The dimensional modelling part of the package was created with a declarative code generator and suffers from 
> limitations inherent to modelling raw data directly. We advise you consider the raw data tables and adjust 
> the modelled layer as needed.

### Schema diagram
The dbt model above can be further customized according to the requirements. Using this package you'll get a basic template
for data model which can be further modified as required.

1. The schema of data modelled above using dlt-dbt-generator:
    
   ![picture](https://storage.googleapis.com/dlt-blog-images/Salesforce_raw_schema.png)

   > Please note that this is a starting template for your data model and is not the final product. It is advised to customize the
   > data model as per your needs.

   Here's the link to the DB diagram: [link](https://dbdiagram.io/d/Salesforce_raw_schema-66e50c3a6dde7f414914fcf3).

#### Optional: Advanced Usage (Generator and Licensing)

This package was created using the dlt-dbt-generator by dlt-plus. For more information about dlt-plus, refer to the 
[dlt-plus documentation.](https://dlt-plus.netlify.app/docs/plus/intro/).To learn more about the dlt-dbt-generator, 
consult the [dlt-dbt-generator](https://dlt-plus.netlify.app/docs/plus/dlt_dbt_generator/#5-running-dbt-package-directly) documentation.

> The dimensional modelling part of the package was created with a declarative code generator and suffers from 
> limitations inherent to modelling raw data directly. We advise you consider the raw data tables and adjust 
> the modelled layer as needed