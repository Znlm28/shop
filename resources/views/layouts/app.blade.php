<!DOCTYPE html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">

<head>
    <!-- Meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="csrf-token" content="{{ csrf_token() }}">
    <!-- Title -->
    <title>Handpickd</title>
    <!-- Favicon -->
    <link rel="icon" type="image/x-icon" href="{{ URL('images/favicon.ico') }}" />
    <!-- Vite CSS and JS bundles -->
    @vite(['resources/css/app.css', 'resources/js/app.js'])
    <!-- Back to top button script -->
    <script src="{{ URL::asset('js/backToTopButton.js') }}" defer></script>
</head>

<body class="font-body bg-background">
    <!-- Main content -->
    <div class="min-h-screen">
        <!-- Navigation -->
        @include('layouts.navigation')
        <!-- Main content section -->
        <main class="min-h-screen">
            <!-- Error notification -->
            @if (session('error'))
                <x-error-notification>
                    {{ session('error') }}
                </x-error-notification>
            @endif
            <!-- Dynamic content slot -->
            {{ $slot }}
        </main>
        <!-- Back to top button -->
        <x-back-to-top-btn />
        <!-- Footer -->
        @include('layouts.footer')
    </div>
</body>

</html>
