# Phone Shop Inventory Website System

A comprehensive web-based inventory management application for phone retail operations.

## Overview

This system allows phone shop managers to efficiently manage their inventory of phones and phone types, track pricing,  
and maintain real-time statistics.

## Features

- **Phone Management**: Add, edit, delete, and search phones with detailed specifications
- **Phone Type Management**: Organize phones by type with release year tracking
- **Real-time Statistics**: Live inventory counts and pricing totals
- **Secure Authentication**: User login system for authorized access
- **Search & Filter**: Quick lookup for phones and phone types
- **Database Integration**: MySQL backend for reliable data storage

## Technology Stack

- **Backend**: PHP
- **Database**: MySQL
- **Frontend**: HTML5, CSS3, JavaScript
- **Server**: PHP Development Server

## Project Structure

Phone-Shop-Inventory-Website/
├── website/
│   ├── index.php              # Main application entry point
│   ├── database.php           # Database connection
│   ├── phone.php              # Phone class
│   ├── phonetype.php          # PhoneType class
│   ├── validate.inc.php       # Form validation
│   ├── phone_styles.css       # Application styling
│   ├── realtime.php           # Real-time updates
│   ├── realtime.js            # AJAX functionality
│   ├── [view components]      # Individual page files
│   ├── images/
│   │   └── logo.png
│   └── [test files]
└── scripts/
    ├── [SQL database files]
    └── [HTTP API test files]

## Getting Started

### Prerequisites
- PHP 7.4 or higher
- MySQL database access
- A web server or PHP development server

### Installation

  1. Clone the repository:
  ```bash
  git clone https://github.com/Aagamambavi/Phone-Shop-Inventory-Website.git
  cd Phone-Shop-Inventory-Website/website

  2. Configure database connection in database.php with your credentials
  3. Start PHP development server:
  php -S localhost:3000

  4. Open in browser:
  http://localhost:3000

  Usage

  1. Login: Use your manager credentials to access the system
  2. Manage Phones: View, add, edit, or delete phones from inventory
  3. Manage Types: Organize phone types and categories
  4. View Stats: Check real-time inventory statistics in the sidebar
  5. Search: Use the search feature to quickly find items

  Features in Detail

  Phone Management

  - Add new phones with specifications (OS, storage, pricing)
  - Edit phone information and pricing
  - Delete phones from inventory
  - View detailed phone information
  - Search by phone ID

  Phone Type Management

  - Create and organize phone types
  - Track release years
  - View all phone types
  - Manage phone type categories

  Real-time Inventory

  - Live phone count
  - Live phone type count
  - Total wholesale price
  - Total list price
  - Updates every 5 seconds

  Database Schema

  The application uses three main tables:
  - Phones: Stores individual phone records
  - PhoneTypes: Stores phone type categories
  - PhoneManagers: Stores user authentication data

  License

  This project is provided as-is.

  ---

  ## **Summary**
  **12 total uploads:**
  1. Create folders
  2. Core files
  3. Validation
  4. Phone views
  5. Phone Type views
  6. Layout components
  7. Real-time features
  8. Styling & assets
  9. Test files
  10. Database schema
  11. API tests
  12. README
- A web server or PHP development server

