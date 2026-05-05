# 🌍 SmartTrip AI — Intelligent Travel Planning System

> **"Plan smarter. Travel better."**
> A full-stack AI-powered trip planning platform built with Django REST Framework + React.js

**Developed by Arman Ansari** | Final Year Project | 2024–25

---

## 📌 Overview

SmartTrip AI is a final-year engineering project that leverages **Google Gemini AI** to generate personalized travel itineraries. Users input their travel preferences (budget, group size, duration, travel style) and the system returns destination recommendations with detailed cost breakdowns, safety tips, and nearby attraction suggestions.

---

## 🚀 Quick Start

### Prerequisites
- Python 3.12+
- Node.js 18+
- A Gemini API key from [Google AI Studio](https://aistudio.google.com/app/apikey)

### 1. Backend Setup

```bash
# Clone and navigate to project
git clone <your-repo-url>
cd smarttrip_ai

# Create and activate virtual environment
python -m venv .venv
# Windows:
.venv\Scripts\activate
# macOS/Linux:
source .venv/bin/activate

# Install dependencies
pip install -r requirements.txt

# Configure environment
cp .env.example .env
# Edit .env with your API keys

# Run migrations and start server
python manage.py migrate
python manage.py runserver
```

### 2. Frontend Setup

```bash
cd frontend
npm install
npm start
```

Access the app at **http://localhost:3000** 🌐

---

## 🔑 Environment Variables (`.env`)

```env
GEMINI_API_KEY=your_gemini_api_key_here
SECRET_KEY=your_django_secret_key_here
DATABASE_URL=your_supabase_postgres_url (for production)
DEBUG=True
ALLOWED_HOSTS=localhost,127.0.0.1
```

---

## 🏗️ Project Architecture

```
smarttrip_ai/
├── manage.py                          # Django entry point
├── requirements.txt                   # Python dependencies
├── build.sh                           # Production build script
├── Procfile                           # Render deployment config
├── .env                               # Environment secrets
│
├── smarttrip_backend/                 # Django project config
│   ├── settings.py                    # App settings
│   └── urls.py                        # Root URL routing
│
├── trip_engine/                       # Core Django app
│   ├── ai_planner.py                  # 🤖 Gemini AI integration
│   ├── models.py                      # Trip & User preference models
│   ├── views.py                       # API view handlers
│   ├── serializers.py                 # DRF serializers
│   └── urls.py                        # App-level URL routes
│
└── frontend/                          # React.js client
    └── src/
        ├── App.js                     # Router + layout wrapper
        ├── index.css                  # Global design system (dark theme)
        ├── services/
        │   └── tripApi.js             # Axios API client
        ├── components/
        │   ├── Navbar.jsx             # Top navigation bar
        │   ├── StepCard.jsx           # Multi-step form card
        │   ├── BudgetBreakdown.jsx    # Cost breakdown widget
        │   └── SafetyPanel.jsx        # Safety tips component
        └── pages/
            ├── Landing.jsx            # Landing / hero page
            ├── Planner.jsx            # 9-step trip planner form
            ├── Dashboard.jsx          # Results dashboard
            └── DestinationDetail.jsx  # Single destination view
```

---

## 📡 API Endpoints

| Method | Endpoint | Description |
|--------|----------|-------------|
| `POST` | `/api/v1/trip/generate/` | Generate AI trip recommendations |
| `POST` | `/api/v1/trip/cost-estimate/` | Estimate trip budget breakdown |
| `GET`  | `/api/v1/trip/history/` | Retrieve past trips |
| `GET`  | `/api/v1/trip/destination/<id>/` | Get destination details |
| `GET`  | `/api/v1/trip/nearby/` | Suggest nearby places |

---

## 🎯 Core Features

### 🧭 Multi-Step Trip Planner
A guided 9-step form collects:
1. Traveller name & contact info
2. Total budget + preferred currency
3. Group composition (solo / couple / family / group)
4. Travel scope (domestic / international)
5. Trip duration (days)
6. Food & accommodation preferences
7. Departure city (with autocomplete)
8. Mode of transport
9. Destination vibe (adventure / cultural / relaxation / etc.)

### 📊 AI-Generated Results Dashboard
- Destination cards ranked by match score
- Detailed itinerary overview
- **Budget Breakdown** (travel cost, hotel/night, daily food, misc)
- **Safety Tips** tailored to destination
- **Nearby Places** suggestions

### 💡 Cost Estimation Engine
A separate API endpoint estimates trip costs before full recommendation, helping users validate budgets early.

---

## 🛠️ Tech Stack

| Layer | Technology | Purpose |
|-------|-----------|---------|
| Backend | Python 3.12 + Django 5 | REST API server |
| API Framework | Django REST Framework | Serialization & routing |
| AI Engine | Google Gemini 1.5 Flash | Itinerary generation |
| Frontend | React 18 + JavaScript | Single Page App |
| Styling | CSS3 (custom design system) | Dark theme UI |
| Database | PostgreSQL via Supabase | Production storage |
| Deployment | Render (API) + Vercel (UI) | Cloud hosting |

---

## 🧪 Sample AI Output (JSON)

```json
{
  "destinations": [
    {
      "name": "Manali, Himachal Pradesh",
      "match_score": 94,
      "summary": "Perfect for adventure seekers with a moderate budget...",
      "budget_breakdown": {
        "transport": 3200,
        "hotel_per_night": 1500,
        "food_per_day": 800,
        "misc": 1000
      },
      "safety_tips": ["Carry altitude sickness medicine", "..."],
      "nearby_places": ["Rohtang Pass", "Solang Valley", "..."],
      "tourist_spots": [...],
      "local_food": [...]
    }
  ]
}
```

---

## 📖 Academic Context

This project was developed as a **Final Year Project** for the degree of B.E. in Computer Engineering. It demonstrates:

- Integration of Large Language Models (LLMs) into production web apps
- RESTful API design with Django REST Framework
- Full-stack development with React.js
- Structured prompt engineering for consistent AI output
- Database modelling and deployment on cloud platforms

---

## 📄 License

MIT License. See `LICENSE` for details.

---

*Made with ☕ and curiosity by **Arman Ansari***
