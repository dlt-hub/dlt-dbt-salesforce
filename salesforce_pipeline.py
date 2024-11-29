#!/usr/bin/env python3
"""Pipeline to load Salesforce data."""
import dlt
from salesforce import salesforce_source
from dlt_plus.dbt_generator.utils import table_reference_adapter


def load() -> None:
    """Execute a pipeline from Salesforce."""

    pipeline = dlt.pipeline(
        pipeline_name="salesforce", destination='bigquery', dataset_name="salesforce_data"
    )
    # Execute the pipeline
    load_info = pipeline.run(salesforce_source())

    # Print the load info
    print(load_info)

    """
    Adding table relationship adapters manually to define table relationships
    """

    table_reference_adapter(
        pipeline,
        "opportunity",
        references=[
            {
                "referenced_table": "contact",
                "columns": ["owner_id"],
                "referenced_columns": ["id"],
            }
        ], )

    table_reference_adapter(
        pipeline,
        "opportunity",
        references=[
            {
                "referenced_table": "account",
                "columns": ["account_id"],
                "referenced_columns": ["id"],
            }
        ], )

    table_reference_adapter(
        pipeline,
        "task",
        references=[
            {
                "referenced_table": "contact",
                "columns": ["owner_id"],
                "referenced_columns": ["id"],
            }
        ], )

    table_reference_adapter(
        pipeline,
        "task",
        references=[
            {
                "referenced_table": "account",
                "columns": ["account_id"],
                "referenced_columns": ["id"],
            }
        ], )

    table_reference_adapter(
        pipeline,
        "task",
        references=[
            {
                "referenced_table": "campaign",
                "columns": ["what_id"],
                "referenced_columns": ["id"],
            }
        ], )

    table_reference_adapter(
        pipeline,
        "task",
        references=[
            {
                "referenced_table": "contact",
                "columns": ["who_id"],
                "referenced_columns": ["id"],
            }
        ], )


if __name__ == "__main__":
    load()
