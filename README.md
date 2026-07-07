# Lumina — AI Fashion Intelligence Platform

Lumina is a full-stack, AI-powered platform for managing 
fashion products, artisans, trends, and customer engagement. 
It combines a PostgreSQL product catalogue, a FastAPI backend, 
and the Claude API to power features like an AI stylist 
chatbot, automated trend scoring, and social caption generation.


## Features (in progress)
- Product Catalogue — SKUs, materials, pricing, artisan credits
- Artisan Portal — track partners, locations, order history
- Trend Engine — score products against real-time fashion trends
- AI Stylist Chatbot — Claude-powered outfit recommendations
- Caption Generator — auto-generates Instagram captions
- Analytics Dashboard — inventory, trends, top performers

## Tech Stack
- Python 3.11+
- PostgreSQL (via SQLAlchemy ORM)
- FastAPI
- Claude API (claude-sonnet-4-6)
- pytrends (Google Trends)
- pandas
- Deployed on Railway / Vercel

## Status
🚧 In active development — this is a learning-in-public project.

## Data Source

Product data is sourced from a public fashion e-commerce dataset 
(mirrored from Kaggle's "Fashion Product Images" dataset), containing 
~44,000 real product records with gender, category, and display name 
fields.

The raw CSV is not committed to this repo (see `.gitignore`) since 
raw datasets shouldn't be tracked in version control. To reproduce 
locally:

\`\`\`bash
curl -sL "https://raw.githubusercontent.com/mayank8200/Fashion-Product-Images-Classification/master/styles.csv" -o styles.csv
\`\`\`

Then run `main.py` to load the data into your local PostgreSQL database.