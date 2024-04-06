<x-guest-layout>
    <!-- Session Status -->
    <x-auth-session-status class="mb-4" :status="session('status')" />

    <form method="POST" action="{{ route('login') }}">
        @csrf

        <!-- Email Address -->
        <div>
            <x-input-label for="email" :value="__('Email')" />
            <x-text-input id="email" class="block mt-1 w-full" type="email" name="email" :value="old('email')" required
                autofocus autocomplete="username" />
            <x-input-error :messages="$errors->get('email')" class="mt-2" />
        </div>

        <!-- Password -->
        <div class="mt-4">
            <x-input-label for="password" :value="__('Password')" />
            <div class="relative">
                <x-text-input id="password" class="block pr-10 mt-1 w-full" type="password" name="password" required
                    autocomplete="current-password" />
                <button type="button" id="show_password" class="absolute inset-y-0 right-0 pr-3 flex items-center text-sm leading-5 focus:outline-none focus:text-accent">
                    Show
                </button>
            </div>
            <x-input-error :messages="$errors->get('password')" class="mt-2" />
        </div>

        <!-- Remember Me -->
        <div class="block mt-4">
            <label for="remember_me" class="inline-flex items-center">
                <input id="remember_me" type="checkbox"
                    class="rounded border-gray-300 text-primary shadow-sm focus:ring-secondary" name="remember">
                <span class="ml-2 text-sm text-primary">{{ __('Remember me') }}</span>
            </label>
        </div>

        <div class="flex items-center justify-start mt-4">
            <a class="underline text-sm text-primary hover:text-accent rounded-md focus:outline-none focus:ring-2 focus:ring-offset-2 focus:ring-indigo-500 mr-4"
                href="{{ route('register') }}">
                {{ __('Not registered yet?') }}
            </a>
            @if (Route::has('password.request'))
                <a class="underline text-sm text-primary hover:text-accent rounded-md focus:outline-none focus:ring-2 focus:ring-offset-2 focus:ring-indigo-500"
                    href="{{ route('password.request') }}">
                    {{ __('Forgot your password?') }}
                </a>
            @endif

        </div>
        <x-primary-button>
            <p class="text-base">Log in</p>
        </x-primary-button>
    </form>

    <script>
        // JavaScript to toggle password visibility
        document.getElementById('show_password').addEventListener('click', function () {
            var passwordInput = document.getElementById('password');
            if (passwordInput.type === "password") {
                passwordInput.type = "text";
            } else {
                passwordInput.type = "password";
            }
        });
    </script>
</x-guest-layout>
