# 🫀 Heart Disease End-to-End Data Analysis

## 📌 Project Overview
This project presents a comprehensive, end-to-end data analysis of heart disease risk factors. The objective is to identify key clinical factors associated with the disease and develop an interactive dashboard to visualize insights for healthcare professionals.

---

## 🛠️ Tools & Technologies
* *Python (Jupyter Notebook):* Exploratory Data Analysis (EDA), statistical analysis, and correlation visualizations.
* *SQL:* Advance querying, data segmentation, and metric creation.
* *Excel:* Initial data cleaning, profiling, and verification.
* *Power BI:* Creation of an interactive, multi-page visualization dashboard.

---

## 📊 Key Insights & Analytics (Data-Driven Findings)
Based on the analysis performed across Python, SQL, and the Power BI dashboard, the following key insights were observed:

*   *Gender and Disease Rate:* Female patients, although fewer in the dataset (312), showed a higher incidence rate of heart disease (*~72%*) compared to male patients (713), who had a disease rate of approximately *42%*.
*   *Age as a Factor:* A high disease rate of *~74%* was observed in the <40 age group. However, it's crucial to note this group had a smaller sample size (57 patients), suggesting a potential for bias.
*   *Chest Pain Type (CP):* The 'CP=1' and 'CP=2' types are significantly associated with heart disease, with incidence rates reaching up to *80%*. The rate is lowest for 'CP=0' at around *25%*.
*   *Cholesterol Levels:* A concentration of patients is seen between 170-260 cholesterol levels. It's noted that cholesterol increases over 500 significantly increase the chance of disease.
*   *Blood Pressure (trestbps):* The highest disease rate (*~79%*) was found in patients with resting blood pressure below 100.
*   *ST Depression (oldpeak) & Slopes:* Higher values of oldpeak generally correlate with lower disease rates. Patients with an up-sloping ST segment also showed higher incidence rates.

---

## 📸 Dashboard Preview

Here are the three distinct views from the interactive Power BI dashboard:

#### Page 1: Home Dashboard (Key Metrics & Segments)
<img width="1267" height="695" alt="Screenshot 2026-08-13 180939" src="https://github.com/user-attachments/assets/3a2e74d5-eb3f-4089-be42-52c7032e4844" />
Focuses on the core KPIs: Total patients (1025), overall disease rate (51.3%), and analysis by age, sex, and chest pain type.

#### Page 2: Blood Pressure & Thalach Overview
<img width="1268" height="692" alt="Screenshot 2026-08-13 181119" src="https://github.com/user-attachments/assets/bc827d5e-9630-4789-a539-2b5d1e74413d" />
Analyzes the relationship between resting blood pressure (trestbps) and maximum heart rate (thalach).

#### Page 3: Cholesterol & Detailed Disease Factors
<img width="1303" height="701" alt="Screenshot 2026-08-13 181206" src="https://github.com/user-attachments/assets/9d135264-46c0-4dd8-91cd-d0bf216f4fc0" />
Deep dives into cholesterol (chol) impact, ST depression (oldpeak), slope, and thalassemia (thal).

---

## 📁 Repository Structure

```text
├── Heart Disease.xlsx             # Cleaned Dataset
├── SQLQuery_Heart Disease.sql     # SQL scripts for metrics & queries
├── Heart Disease.ipynb            # Python notebook (EDA)
└── Heart Disease.pbix             # Power BI Interactive Dashboard
