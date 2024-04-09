<?php

use App\Providers\RouteServiceProvider;

// Kiểm tra xem người dùng mới có thể đăng ký
test('new users can register', function () {
    // Gửi yêu cầu POST để đăng ký người dùng mới
    $response = $this->post('/register', [
        'name' => 'Test User',
        'email' => 'test@example.com',
        'password' => 'password',
        'password_confirmation' => 'password',
    ]);

    // Kiểm tra xem người dùng đã được xác thực và đã chuyển hướng đến trang "/home"
    $this->assertAuthenticated();
    $response->assertRedirect(RouteServiceProvider::HOME);
});
