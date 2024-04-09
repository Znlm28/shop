<!-- Đây là một trang xác nhận mật khẩu trước khi tiếp tục vào một khu vực bảo mật của ứng dụng -->

<x-guest-layout>
    <!-- Thông báo yêu cầu xác nhận mật khẩu -->
    <div class="mb-4 text-sm text-gray-600">
        {{ __('This is a secure area of the application. Please confirm your password before continuing.') }}
    </div>

    <!-- Biểu mẫu xác nhận mật khẩu -->
    <form method="POST" action="{{ route('password.confirm') }}">
        @csrf <!-- Thêm token CSRF -->

        <!-- Trường mật khẩu -->
        <div>
            <x-input-label for="password" :value="__('Password')" />

            <x-text-input id="password" class="block mt-1 w-full" type="password" name="password" required autocomplete="current-password" />

            <x-input-error :messages="$errors->get('password')" class="mt-2" />
        </div>

        <!-- Nút xác nhận -->
        <div class="flex justify-end mt-4">
            <x-primary-button class="bg-primary hover:bg-accent">
                {{ __('Confirm') }}
            </x-primary-button>
        </div>
    </form>
</x-guest-layout>

