#!/usr/bin/env python
"""
SmartTrip AI — Django Management Entry Point
Developed by Arman Ansari | Final Year Project 2024-25
"""
import os
import sys


def main():
    """Execute Django administrative commands from the CLI."""
    os.environ.setdefault('DJANGO_SETTINGS_MODULE', 'smarttrip_backend.settings')
    try:
        from django.core.management import execute_from_command_line
    except ImportError as exc:
        raise ImportError(
            "Django could not be imported. Ensure the virtual environment "
            "is activated and all dependencies from requirements.txt are installed."
        ) from exc
    execute_from_command_line(sys.argv)


if __name__ == '__main__':
    main()
