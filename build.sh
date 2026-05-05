#!/usr/bin/env bash
# SmartTrip AI — Production Build Script
# Used by Render.com for automated deployment
# Developed by Arman Ansari

# Stop on any error
set -o errexit

echo "📦 Installing Python dependencies..."
pip install -r requirements.txt

echo "🗂️  Collecting static files..."
python manage.py collectstatic --no-input

echo "🗄️  Applying database migrations..."
python manage.py migrate

echo "✅ Build complete. SmartTrip AI is ready."
