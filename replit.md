# Maricheck - Maritime Crew Management System

## Overview

Maricheck is a Flask-based web application designed for managing maritime crew member registrations and staff recruitment. The system provides a dual-interface design with public-facing registration forms for crew members and shore-based staff, along with an admin dashboard for managing applications, tracking status, and document handling. The platform serves as a comprehensive maritime workforce management solution connecting seafarers and shore staff with shipping companies.

## User Preferences

Preferred communication style: Simple, everyday language.

## System Architecture

### Frontend Architecture
- **Template Engine**: Jinja2 templating with Flask for server-side rendering and dynamic content
- **UI Framework**: Bootstrap 5 with dark theme integration and responsive design patterns
- **Styling**: Custom maritime-themed CSS with navy blue, sea green, and gold color scheme using Inter font family
- **Icons**: Font Awesome 6.4.0 for consistent iconography throughout the application
- **Responsive Design**: Mobile-first approach with Bootstrap grid system and custom breakpoint handling
- **Form Handling**: Client-side validation with Flask-WTF integration and file upload previews

### Backend Architecture
- **Framework**: Flask web framework with modular route organization and blueprint-ready structure
- **Database ORM**: SQLAlchemy with declarative base model architecture supporting both SQLite and PostgreSQL
- **Authentication**: Flask-Login for session-based admin authentication with simple username/password system
- **Form Processing**: Flask-WTF with comprehensive validation, CSRF protection, and file upload handling
- **File Management**: Secure file upload system with UUID-based naming, organized folder structure, and file type validation
- **Security**: Werkzeug password hashing for admin credentials and ProxyFix middleware for deployment

### Data Storage Architecture
- **Primary Database**: SQLAlchemy ORM with SQLite default (production-ready for PostgreSQL migration)
- **Models**: Three core entities - Admin (authentication), CrewMember (seafarer profiles), and StaffMember (shore-based positions)
- **File Storage**: Local filesystem with organized directory structure under static/uploads with categorized subfolders
- **Status Management**: Enumerated status system (Registered, Screening, Documents Verified, Approved, Rejected, Flagged)
- **Data Validation**: Field-level constraints with unique passport numbers for crew members

### Key Architectural Decisions
- **Dual Interface Separation**: Public registration portal and protected admin dashboard serve different user needs without role complexity
- **Session-Based Authentication**: Simple admin login without complex user role management, suitable for small to medium operations
- **File Upload Strategy**: Local file storage with UUID prefixes for security, organized by document type (passport, CDC, resume, photo, medical)
- **Database Agnostic Design**: SQLite for development with straightforward PostgreSQL production migration path
- **Form-Centric Design**: Heavy emphasis on form processing with comprehensive validation and user feedback
- **Status Tracking System**: Centralized application status management with visual indicators and filtering capabilities

## External Dependencies

### Core Framework Dependencies
- **Flask 3.0.3**: Main web framework for routing, templating, and request handling
- **Flask-SQLAlchemy 3.1.1**: Database ORM integration with declarative model support
- **Flask-Login**: User session management for admin authentication
- **Flask-WTF**: Form handling, validation, and CSRF protection with file upload support
- **WTForms**: Form field definitions, validators, and rendering components

### Frontend Dependencies
- **Bootstrap 5**: CSS framework with dark theme via CDN for responsive UI components
- **Font Awesome 6.4.0**: Icon library via CDN for consistent iconography
- **Google Fonts (Inter)**: Typography via CDN for professional appearance

### Production Dependencies
- **Gunicorn 22.0.0**: WSGI HTTP server for production deployment
- **Python-dotenv 1.0.1**: Environment variable management for configuration
- **Werkzeug**: Security utilities for password hashing and file handling (included with Flask)

### Database Configuration
- **SQLite**: Default development database (file-based, no external service required)
- **PostgreSQL Support**: Production-ready configuration via DATABASE_URL environment variable
- **Connection Pooling**: Configured with pool_recycle and pool_pre_ping for production reliability

### File System Requirements
- **Local Storage**: Static file serving for uploaded documents with organized folder structure
- **Upload Limits**: 16MB maximum file size with support for PDF, image, and document formats
- **Security Measures**: Secure filename generation and file type validation for document uploads