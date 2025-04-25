# E-commerce-database

This project is a fully relational, scalable database schema designed to support a dynamic and flexible e-commerce platform. It handles products, categories, variations (size, color), brands, custom attributes, images, and more — ideal for any online retail solution.


# Project Structure

- product: Main product info
- product_item: SKU-based item variations
- product_variation: Size/color pairings
- product_image: Image URLs and ordering
- color, size_category, size_option: Variation detail tables
- product_attribute: Custom product fields (e.g. material, weight)
- attribute_category, attribute_type: Organize and type attributes
- brand, product_category: Lookup tables for branding and grouping

# ER Diagram

> ![ER Diagram](https://github.com/Itchy-Fingers/e-commerce-database/blob/main/ecommerce.jpg)


# Sample Features

- Multi-image product support
- Color and size variations with specific SKUs
- Brand and category filtering
- Extensible attribute system (text, numbers, booleans)
- User and admin role-ready DB user creation

# Database Access
- Admin: ecom_admin (all privileges)
- App User: ecom_user (read/write)
- Read-only: readonly_user (SELECT only)

