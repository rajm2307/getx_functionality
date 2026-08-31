import 'package:flutter/material.dart';
import 'package:myproject/core/router/routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      routerConfig: getRoute,
    );
  }
}





// Flutter Interview Task: “Mini E-Commerce App (Products + Cart)”
// Objective
// Build a mini e-commerce Flutter app using real demo APIs with:
// UI Implementation
// API Integration & Rendering
// State Management
// Routing
// Local Storage / Caching
// Responsive UI
// Demo API (Real + Free)
// Use FakeStore API (no auth needed):
// Base URL
// https://fakestoreapi.com
// Endpoints
// 1. Get all products
// • GET /products
// 2. Get single product
// • GET /products/{id}
// 3. Get categories
// • GET /products/categories
// 4. Get products by category
// • GET /products/category/{category}
// Screens & UI Requirements 1️
// Splash Screen
// • App logo
// • Check local saved login/session (Firebase optional)
// • Navigate to Home2️
// Home Screen (Product Listing)UI Must Have:
// • AppBar with:
// o App title
// o Cart icon with badge count
// • Category chips horizontal list
// • Product grid (2 columns mobile, 3–4 tablet)
// • Each product card shows:
// o Image
// o Title (max 2 lines)
// o Price
// o Rating
// o “Add to Cart” button
// API:
// • Load products using GET /products
// • Load categories using GET /products/categories
// Must Handle:
// • Loading shimmer / loader
// • Error state UI
// • Empty state UI3️
// Category Filter
// • On category click → fetch category products
// • API: GET /products/category/{category}
// • Provide “All” chip to reset4️
// Product Details Screen
// UI Must Have:
// • Large product image
// •• Description section
// • Quantity selector (+ / -)
// • “Add to Cart” button fixed bottom
// API:
// • GET /products/{id}5️
// Cart Screen
// UI Must Have:
// • List of cart items
// • Each row:
// o Image
// o Title
// o Price
// o Quantity stepper (+/-)
// o Remove button
// • Summary section:
// o Total Items
// o Total Amount
// • Checkout button
// Local Storage:
// • Save cart items locally (Hive / SharedPreferences)
// • Cart must persist after app restart6️
// Checkout Screen (Mock)
// UI:
// • Address form (name, phone, address)
// • Payment option selection (COD / UPI mock)
// • Place Order button
// Requirement:• Show success screen after placing order
// • Clear cart after order success
