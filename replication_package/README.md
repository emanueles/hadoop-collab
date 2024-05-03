# Replication files

Title: Understanding Collaboration Diversity in Bug-Fixing Tasks: A 10 Years Case Study in the Apache Hadoop Project

The scripts are in jupyter notebooks and we recommend using VSCode to run the analyses. To replicate the analyses in this package, it is recommended to use a python virtual environment:

```
cd hadoop-collab
python3 -m venv env 
```

Then load the required packages:

```
source env/bin/activate
pip install -r requirements.txt
```

And then open VSCode and configure it to use the virtual environment above.

##  Contents

### Treatment of original dataset to generate the social dataset (in the generate_social_dataset_process folder)

#### original-dataset
 - The original dataset (https://doi.org/10.6084/m9.figshare.8852084.v5)

### social-dataset
 - The dataset generated after the run the article.ipynb that creates a unique identifier to partcipants of original dataset used throughout this work.
 - Files:
   - `4-git_team_after_manual_map.csv` => all participants (https://hadoop.apache.org/who.html) and if they made commits in original dataset
   - `database_user_jira.csv` => file with all jira users of dataset and the associated name (obtained via Apache's JIRA API)
   - `hadoop-members-10-05-2020_aba_committers.csv` => Hadoop’s active committers - obtained from https://hadoop.apache.org/who.html
   - `hadoop-members-10-05-2020_aba_pmc.csv` => The Hadoop Project Management Committee - obtained from https://hadoop.apache.org/who.html

### Analysis (in the generate_analysis_and_visualization folder)

#### Datasets
 - `generate_analysis_and_visualization/datasets/bug_report_collab_dataset.csv` => main data file used for analyses and visualizations.
 - `generate_analysis_and_visualization/datasets/comment_author_groupby_bug.csv` => file used to generate `bug_report_collab_dataset.csv`
 - contributors_summary_dataset_full.csv => file also used to generate `bug_report_collab_dataset.csv`
 - `generate_analysis_and_visualization/datasets/duckdb/` => data files stored in duckdb format
 - `generate_analysis_and_visualization/datasets/snapshot_voting.csv` => modified original `snapshots.csv` file with NaT values removed because duckdb does not load these data types. It also includes voting and size metrics.
 - `generate_analysis_and_visualization/datasets/commentslog_voting.csv` => modified original `comments.csv`file with voting and size metrics

#### Scripts 
  - Main Analyses' file:
   - `generate_analysis_and_visualization/scripts/collaboration_metrics_correlations.ipynb`=> documented jupyter notebook for generating the correlations of the metrics

  - Scripts used to generate the intermediate files:
   - `generate_analysis_and_visualization/scripts/comment_per_user.ipynb` => jupyter notebook that creates `comment_author_groupby_bug.csv`. It creates a file with comment counts by contributor by Bug Report Key.
   - `generate_analysis_and_visualization/scripts/create_duckdb_database.ipynb` => jupyter notebook that creates the duckdb database.
   - `generate_analysis_and_visualization/scripts/create_summary_dataset.ipynb` => jupyter notebook that creates `contributors_summary_dataset_full.csv`.
   - `generate_analysis_and_visualization/scripts/process_csv_collab.ipynb` => jupyter notebook that creates the main file `bug_report_collab_dataset.csv`.

#### Visualization
 - `generate_analysis_and_visualization/visualizations/Collab_RQ1_Analysis.twbx` => Tableau file that loads `bug_report_collab_dataset.csv` to generate visualizations to explore RQ1.
 - `generate_analysis_and_visualization/visualizations/Collab_RQ2_Analysis.twbx` => Tableau file that loads `bug_report_collab_dataset.csv` to generate visualizations to explore RQ2.

 ### Other files
 - `../requirements.txt` => used to load the required Python packages.
