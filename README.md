💡 Local vs. Online LLM Models: Evaluating User Engagement, Performance, and Usability
This project is a comprehensive analysis of how users interact with Large Language Models (LLMs) in both online and locally hosted environments. We applied data mining, data warehousing, and machine learning techniques to derive actionable insights from a custom-collected dataset.

🧑‍💻 Team Members
Barama Haritha Sai (22481A0523)
Alaparthi Yaswanth Kiran (22481A0510)
Chandu Mounika (22481A0541)
Gosala Kartheek (22481A0565)
Under the guidance of Dr. M. Babu Rao, M.Tech, Ph.D
Seshadri Rao Gudlavalleru Engineering College

📌 Project Objectives
Evaluate user preferences for online vs. local LLMs.
Analyze usage trends, prompt sizes, and engagement levels.
Classify user behavior using machine learning models.
Design and implement OLAP operations using SSMS, SSAS, and Visual Studio.
Apply classification models (Naïve Bayes, SVM, etc.) using Orange Tool.

🧾 Dataset Collection
Custom dataset created using Google Forms.

Collected information on:
Profession
Tool usage frequency
Local vs. Online preference
Model type, prompt size, and version

🧰 Technologies & Tools Used
SQL Server Management Studio (SSMS) – Data modeling and schema creation
Visual Studio with SSAS – OLAP schema visualization and MDX query execution
Orange Tool – Preprocessing, model building, and visualization
Excel – Data transformations and exports
Google Forms – Dataset collection

🗂️ Data Warehousing: Schema Design
We designed three OLAP schemas:
Star Schema
Snowflake Schema
Fact Constellation Schema

Each schema involved:
Fact tables like Fact_Usage, Fact_Performance
Dimension tables like Dim_User, Dim_LLM_Tools, Dim_Prompt_Size, etc.

🔍 OLAP Operations Performed
We wrote MDX queries to execute:
Drill-down
Roll-up
Slice
Dice
Visualizations were done using Orange Tool and Excel Charts.

🤖 Machine Learning Model
🧪 Problem: Predict LLM Preference (Online vs. Local)
Target Variable: LLM Usage Mode
Best performing model: Naïve Bayes
Evaluation Metrics: Accuracy, Precision, Recall, F1-Score
Accuracy Achieved: 55.26%

📊 Experimental Results
OLAP revealed trends across user types, tools, and frequencies.
Naïve Bayes was chosen due to the balance of simplicity and performance.
Used Confusion Matrix and Tree Viewer to visualize model behavior.

🩺 Bonus Analysis (Part-B)
Additionally, we analyzed a real-world Post-Operative Patient Dataset using:
Classification models (SVM, Random Forest, etc.)
Best Accuracy: Random Forest (77.8%)
Applied data cleaning, imputation, and discretization
Developed prediction workflows using Orange

📈 Key Findings
Majority prefer online LLMs like ChatGPT and Gemini.
Privacy and speed are primary reasons for choosing local models.
Researchers tend to use local LLMs more than students/developers.
Model preferences, prompt sizes, and frequency vary by profession.


🏁 Conclusion
This project showcases the application of KDD, OLAP, and classification techniques to derive meaningful insights about how different user segments engage with LLM technologies. It bridges the gap between theoretical knowledge and real-world data analytics, providing a strong foundation for future research and AI system optimization.
