<!DOCTYPE html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">

<head>
    <!-- Character encoding -->
    <meta charset="utf-8">
    <!-- Responsive viewport -->
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- CSRF token for security -->
    <meta name="csrf-token" content="{{ csrf_token() }}">
    <!-- Title of the page -->
    <title>{{ config('app.name', 'Handpickd') }}</title>
    <!-- Load CSS and JavaScript using Vite -->
    @vite(['resources/css/app.css', 'resources/js/app.js'])
</head>

<body class="font-poppins text-gray-900 antialiased">
    <!-- Main container -->
    <div class="min-h-screen flex flex-col sm:justify-center items-center pt-6 sm:pt-0 bg-gray-100">
        <!-- Logo and title section -->
        <div class="sm:mx-auto sm:w-full sm:max-w-sm flex flex-col justify-center items-center">
            <!-- Application logo -->
            <x-application-logo class="w-12 h-12 text-gray-500" />
            <!-- Title based on route -->
            @if (request()->routeIs('register'))
                <h2 class="mt-4 text-center text-2xl font-bold leading-9 tracking-tight text-gray-900">Create a new
                    Account
                </h2>
            @else
                <h2 class="mt-4 text-center text-2xl font-bold leading-9 tracking-tight text-gray-900">
                    Sign in to your account
                </h2>
            @endif
        </div>
        <!-- Form container -->
        <div class="w-full sm:max-w-md mt-6 px-6 py-4 bg-white shadow-md overflow-hidden sm:rounded-lg">
            <!-- Slot content -->
            {{ $slot }}
        </div>
    </div>
</body>

</html>
