import pandas as pd # Import the necessary Libraries to read the data in tabular format
import psycopg2  # Python to Postgres link

df = pd.read_csv("styles.csv", on_bad_lines="skip") # Read the file in table like structure

# Print the rows and check the first 3 rows
print(f"Loaded {len(df)} rows")
print(df.head(3))


# Open a connection
conn = psycopg2.connect(
    dbname="lumina",
    user="varshakabra",
    host="localhost"
)

cur = conn.cursor() # A "cursor" is what lets us actually send SQL commands through this connection
print("Connected to PostgreSQL successfully!")
