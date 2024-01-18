**This collection of IPython Notebooks (ipynb) represents an interconnected set of scripts designed to analyze and derive insights from citation data, sentiment scores, and author information. The following provides a brief overview of each code file, its input, output, and processing steps:**

* **SentiWordNet_SentimentAnalysis.ipynb**
  - This notebook reads citation data from "citation sentiment.txt."
  - It employs SentiWordNet for sentiment analysis on each sentence in the citation data, Generates a new Excel file, "SentiWordNet_Citation.xlsx," incorporating sentiment scores for each sentence.
   
* **Authors_Name_Extraction.ipynb**
  - Reads citation data from "citation sentiment.txt."
  - It then utilizes request library of python to get names of author from the website, and then creates a new Excel file, "Athar_Author.xlsx," storing the names of authors for each unique paper in the dataset.

**Note: The file Athar_Author_New.xlsx" was generated after performing the disambiguation of names, which was mostly manual.**
 
* **Author_SelfCitation_And_EdgeList.ipynb**
  - Reads author names from "Athar_Author_New.xlsx" and computed sentiment scores from "SentiWordnet_Citation.xlsx."
  - Computes citation edges between authors for each article, indicating edges between every pair of authors for cited and citing articles.
  - Identifies self-citations, i.e., instances where common authors exist between citing and cited papers.
  - Generates files:
    - "Author_Self_Citations.xlsx" containing self-citation instances.
    - "Author_EdgeList_Filtered.xlsx" containing author edge-list for each article, excluding edges between self-cited articles.
      
* **Article_Score_Computation.ipynb**
  - Reads computed sentiment scores from "SentiWordNet_Citation.xlsx" and self-citations from "Author_Self_Citations.xlsx."
  - Processes data to obtain total sentiment scores and citation frequencies for each Article excluding self-citations.
  - Stores processed data in a new file, "SentiScores_NSC.xlsx."

* **EdgeList_Aggregation.ipynb**
  - This file reads the computed EdgeList from "Author_EdgeList_Filtered.xlsx".
  - As the data previously computed i.e. the "Author_EdgeList_Filtered.xlsx" contained the edges between the citing and cited paper, further processing was done to get the aggregated data for each cited and citing author pair across all the papers.
  - Finally, it stores the proccessed data into a new file "Author_EdgeList_Weighted.xlsx"
 
* **Author_Scores&H_Index.ipynb**
  - Reads total sentiment scores and citation frequencies for each paper from "SentiScores_NSC.xlsx" and the list of authors for each paper from "Athar_Author_new.xlsx."
  - Aggregates data for further operations, producing two types of aggregated data:
    - Total sentiment scores and citation count for each author, stored in "Author_Scores.xlsx."
    - Article-wise total sentiment scores and citation count for each author, used for h-index and impact factor, stored in "Author_Papers_Athar.xlsx."
  - Computes h-index and sentiment-based h-index for each author using the article-wise aggregated data, stored in "Author_indexes_athar.xlsx."

* **Authors_Impact.ipynb**
  - Reads article-wise total sentiment scores and citation count for each author from "Author_Papers_Athar.xlsx."
  - Computes impact factor and sentiment-based impact factor, storing results in "Author_impact_athar.xlsx."

 * **Author_Graph.ipynb**
    - Reads "Author_EdgeList_Weighted.xlsx" to obtain the total number of citations and total sentiment scores shared between pairs of authors.
    - Utilizes the networkx library in Python to create a graph from the weighted edge list.
    - Computes PageRanks for damping factors 0.85 and 0.55, storing results in respective Excel files.

 * **Kendall.ipynb**
    - Reads values of different metrics (impact factor, total sentiment scores, citation counts, h-index, and PageRanks) from their respective Excel files.
    - Utilizes the scipy.stats library in Python to compute Kendall's tau coefficient, indicating the degree of correlation between sentiment-aware and conventional metrics.

* **RBO.R**
    - Reads values of different metrics (impact factor, total sentiment scores, citation counts, h-index, and PageRanks) from their respective Excel files.
    - Utilizes the gespeR library in Python to compute Rank Biased Overlap and Rank Biased Distance (1-RBO) between sentiment-aware and conventional metrics.

