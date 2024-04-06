<x-guest-layout>
    <form method="POST" action="{{ route('register') }}">
        @csrf

        <!-- Name -->
        <div>
            <x-input-label for="name" :value="__('Name')" />
            <x-text-input id="name" class="block mt-1 w-full" type="text" name="name" :value="old('name')" required
                autofocus autocomplete="name" />
            <x-input-error :messages="$errors->get('name')" class="mt-2" />
        </div>

        <!-- Email Address -->
        <div class="mt-4">
            <x-input-label for="email" :value="__('Email')" />
            <x-text-input id="email" class="block mt-1 w-full" type="email" name="email" :value="old('email')"
                required autocomplete="username" />
            <x-input-error :messages="$errors->get('email')" class="mt-2" />
        </div>

        <!-- Password -->
        <div class="mt-4">
            <x-input-label for="password" :value="__('Password')" />
            <div class="relative">
                <x-text-input id="password" class="block pr-10 mt-1 w-full" type="password" name="password" required
                    autocomplete="new-password" />
                <button type="button" id="show_password" class="absolute inset-y-0 right-0 pr-3 flex items-center text-sm leading-5 focus:outline-none focus:text-accent">
                    Show
                </button>
            </div>
            <x-input-error :messages="$errors->get('password')" class="mt-2" />
        </div>

        <!-- Confirm Password -->
        <div class="mt-4">
            <x-input-label for="password_confirmation" :value="__('Confirm Password')" />
            <div class="relative">
                <x-text-input id="password_confirmation" class="block pr-10 mt-1 w-full" type="password"
                    name="password_confirmation" required autocomplete="new-password" />
                <button type="button" id="show_confirm_password" class="absolute inset-y-0 right-0 pr-3 flex items-center text-sm leading-5 focus:outline-none focus:text-accent">
                    Show
                </button>
            </div>
            <x-input-error :messages="$errors->get('password_confirmation')" class="mt-2" />
        </div>

        <div class="flex items-center justify-end mt-4">
            <a class="underline text-sm text-primary hover:text-accent rounded-md focus:outline-none focus:ring-2 focus:ring-offset-2 focus:ring-indigo-500"
                href="{{ route('login') }}">
                {{ __('Already registered?') }}
            </a>
        </div>
        <x-primary-button>
            <p class="text-base">Register</p>
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

        document.getElementById('show_confirm_password').addEventListener('click', function () {
            var confirmPasswordInput = document.getElementById('password_confirmation');
            if (confirmPasswordInput.type === "password") {
                confirmPasswordInput.type = "text";
            } else {
                confirmPasswordInput.type = "password";
            }
        });
    </script>
</x-guest-layout>
