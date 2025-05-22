-- Dim_User Table
CREATE TABLE Dim_User (
    User_ID INT PRIMARY KEY,
    Username VARCHAR(100),
    Profession VARCHAR(100)
);


-- Dim_LLM_Tools Table
CREATE TABLE Dim_LLM_Tools (
    LLM_Tool_ID INT PRIMARY KEY,
    LLM_Tool_Name VARCHAR(100)
);

-- Dim_Prompt_Size Table
CREATE TABLE Dim_Prompt_Size (
    Prompt_Size_ID INT PRIMARY KEY,
    Prompt_Size_Description VARCHAR(50)
);


-- Dim_Frequency Table
CREATE TABLE Dim_Frequency (
    Frequency_ID INT PRIMARY KEY,
    Usage_Frequency VARCHAR(50)
);

-- Dim_Local_LLM_Models Table
CREATE TABLE Dim_Local_LLM_Models (
    Local_LLM_Model_ID INT PRIMARY KEY,
    Model_Name VARCHAR(100),
    Model_Version VARCHAR(50),
    Reason_For_Local_Use VARCHAR(20)
);

-- Dim_Usage_Type Table
CREATE TABLE Dim_Usage_Type (
    Usage_Type_ID INT PRIMARY KEY,
    Usage_Description VARCHAR(100)
);


-- Fact Tables
-- Fact_LLM_Usage Table
CREATE TABLE Fact_LLM_Usage (
    User_ID INT,
    Timestamp TIMESTAMP,
    LLM_Usage_Frequency INT,
    Prompt_Size INT,
    Usage_Type_ID INT,
    Local_LLM_Model_ID INT NULL,
    LLM_Tool_ID INT NULL,
    FOREIGN KEY (User_ID) REFERENCES Dim_User(User_ID),
    FOREIGN KEY (LLM_Usage_Frequency) REFERENCES Dim_Frequency(Frequency_ID),
    FOREIGN KEY (Prompt_Size) REFERENCES Dim_Prompt_Size(Prompt_Size_ID),
    FOREIGN KEY (Local_LLM_Model_ID) REFERENCES Dim_Local_LLM_Models(Local_LLM_Model_ID),
    FOREIGN KEY (LLM_Tool_ID) REFERENCES Dim_LLM_Tools(LLM_Tool_ID),
    FOREIGN KEY (Usage_Type_ID) REFERENCES Dim_Usage_Type(Usage_Type_ID)
);


--Fact_Model_Performance Table
CREATE TABLE Fact_Model_Performance (
    Performance_ID INT PRIMARY KEY,
    Local_LLM_Model_ID INT,
    LLM_Tool_ID INT,
    Accuracy DECIMAL(5,2),
    Inference_Time DECIMAL(10,2),
    Data_Size INT,
    FOREIGN KEY (Local_LLM_Model_ID) REFERENCES Dim_Local_LLM_Models(Local_LLM_Model_ID),
    FOREIGN KEY (LLM_Tool_ID) REFERENCES Dim_LLM_Tools(LLM_Tool_ID)
);

-- Insert Statements

-- Dim_User
INSERT INTO Dim_User (User_ID, Username, Profession) VALUES
(1, 'Haritha', 'Student'),
(2, 'Maruthi', 'Researcher'),
(3, 'Ram', 'Student'),
(4, 'Snigdha', 'Student'),
(5, 'Kumar', 'Developer'),
(6, 'Hari', 'Student'),
(7, 'Ramya', 'Researcher'),
(8, 'Manasa', 'Developer'),
(9, 'Snishna', 'Student'),
(10, 'Kumari', 'Manager'),
(11, 'Ramu', 'Analyst'),
(12, 'Haripriya', 'Student'),
(13, 'jaya', 'Scientist'),
(14, 'sai', 'Researcher'),
(15, 'chandini', 'Engineer');

-- Dim_LLM_Tools
INSERT INTO Dim_LLM_Tools (LLM_Tool_ID, LLM_Tool_Name) VALUES
(1, 'ChatGPT'),
(2, 'Gemini'),
(3, 'LLaMa'),
(4, 'Falcon'),
(5, 'Mistral'),
(6, 'ChatGPT'),
(7, 'Falcon'),
(8, 'Gemini'),
(9, 'LLaMa'),
(10, 'ChatGPT'),
(11, 'Mistral'),
(12, 'Falcon'),
(13, 'Gemini'),
(14, 'LLaMa'),
(15, 'ChatGPT');


-- Dim_Prompt_Size
INSERT INTO Dim_Prompt_Size (Prompt_Size_ID, Prompt_Size_Description) VALUES
(1, 'Short'),
(2, 'Medium'),
(3, 'Long'),
(4, 'Extra Long'),
(5, 'Concise'),
(6, 'Medium'),
(7, 'Short'),
(8, 'Long'),
(9, 'Concise'),
(10, 'Medium'),
(11, 'Short'),
(12, 'Long'),
(13, 'Extra Long'),
(14, 'Medium'),
(15, 'Concise');


-- Dim_Frequency
INSERT INTO Dim_Frequency (Frequency_ID, Usage_Frequency) VALUES
(1, 'Daily'),
(2, 'Monthly'),
(3, 'Weekly'),
(4, 'Bi-Weekly'),
(5, 'Yearly'),
(6, 'Daily'),
(7, 'Monthly'),
(8, 'Weekly'),
(9, 'Bi-Weekly'),
(10, 'Yearly'),
(11, 'Daily'),
(12, 'Monthly'),
(13, 'Weekly'),
(14, 'Bi-Weekly'),
(15, 'Yearly');


-- Dim_Local_LLM_Models
INSERT INTO Dim_Local_LLM_Models (Local_LLM_Model_ID, Model_Name, Model_Version, Reason_For_Local_Use) VALUES
(1, 'Mistral', '8x7B', 'Custom fine-tuning'),
(2, 'LLaMa', '7B', 'Privacy concerns'),
(3, 'Falcon', '40B', 'Fast inference'),
(4, 'Falcon', '7B', 'Custom fine-tuning'),
(5, 'LLaMa', '40B', 'Privacy concerns'),
(6, 'Mistral', '8x7B', 'Fast inference'),
(7, 'Falcon', '40B', 'Privacy concerns'),
(8, 'LLaMa', '7B', 'Custom fine-tuning'),
(9, 'Falcon', '7B', 'Fast inference'),
(10, 'Mistral', '8x7B', 'Custom fine-tuning'),
(11, 'Falcon', '40B', 'Privacy concerns'),
(12, 'LLaMa', '7B', 'Fast inference'),
(13, 'Falcon', '7B', 'Custom fine-tuning'),
(14, 'Mistral', '8x7B', 'Privacy concerns'),
(15, 'Falcon', '40B', 'Fast inference');


-- Dim_Usage_Type
INSERT INTO Dim_Usage_Type (Usage_Type_ID, Usage_Description) VALUES
(1, 'Online'),
(2, 'Local'),
(3, 'Hybrid'),
(4, 'Batch Processing'),
(5, 'Real-Time Processing'),
(6, 'Online'),
(7, 'Local'),
(8, 'Hybrid'),
(9, 'Batch Processing'),
(10, 'Real-Time Processing'),
(11, 'Online'),
(12, 'Local'),
(13, 'Hybrid'),
(14, 'Batch Processing'),
(15, 'Real-Time Processing');


-- Fact_LLM_Usage
INSERT INTO Fact_LLM_Usage (User_ID, LLM_Usage_Frequency, Prompt_Size, Usage_Type_ID, Local_LLM_Model_ID, LLM_Tool_ID) VALUES
(1, 1, 2, 1, NULL, 1),
(2, 2, 3, 2, NULL, 2),
(3, 3, 1, 1, NULL, 3),
(4, 1, 1, 2, NULL, 4),
(5, 2, 2, 1, NULL, 5),
(6, 3, 4, 2, NULL, 6),
(7, 1, 3, 3, NULL, 7),
(8, 2, 1, 1, NULL, 8),
(9, 3, 2, 2, NULL, 9),
(10, 1, 4, 3, NULL, 10),
(11, 2, 2, 2, NULL, 11),
(12, 1, 1, 3, NULL, 12),
(13, 3, 3, 1, NULL, 13),
(14, 1, 4, 2, NULL, 14),
(15, 2, 1, 3, NULL, 15);


-- Fact_Model_Performance
INSERT INTO Fact_Model_Performance (Performance_ID, Local_LLM_Model_ID, LLM_Tool_ID, Accuracy, Inference_Time, Data_Size) VALUES
(1, 1, 1, 92.5, 1.2, 1000),
(2, 2, 2, 89.3, 1.5, 2000),
(3, 3, 3, 95.0, 0.9, 1500),
(4, 4, 4, 88.7, 1.8, 3000),
(5, 5, 5, 91.2, 1.3, 2500),
(6, 1, 2, 90.5, 1.4, 1800),
(7, 2, 3, 93.7, 1.1, 2200),
(8, 3, 4, 87.9, 2.0, 2700),
(9, 4, 5, 94.2, 0.8, 1600),
(10, 5, 1, 89.1, 1.6, 1900),
(11, 1, 3, 96.4, 0.7, 2100),
(12, 2, 4, 88.3, 1.9, 2300),
(13, 3, 5, 90.0, 1.5, 2000),
(14, 4, 1, 92.8, 1.0, 2500),
(15, 5, 2, 89.9, 1.4, 1700);



