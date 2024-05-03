COPY new_commit FROM '../datasets/duckdb//new_commit.parquet' (FORMAT 'parquet');
COPY new_comment FROM '../datasets/duckdb//new_comment.parquet' (FORMAT 'parquet');
COPY new_changelog FROM '../datasets/duckdb//new_changelog.parquet' (FORMAT 'parquet');
COPY new_snapshot FROM '../datasets/duckdb//new_snapshot.parquet' (FORMAT 'parquet');
COPY consolidated_list_of_contributors_official FROM '../datasets/duckdb//consolidated_list_of_contributors_official.parquet' (FORMAT 'parquet');
COPY final_list_of_contributors_after FROM '../datasets/duckdb//final_list_of_contributors_after.parquet' (FORMAT 'parquet');
