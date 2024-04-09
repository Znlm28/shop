<?php

use App\Models\User;
use App\Providers\RouteServiceProvider;

// Kiểm tra người dùng có thể xác thực bằng cách sử dụng màn hình đăng nhập
test('users can authenticate using the login screen', function () {
    // Tạo một người dùng mới
    $user = User::factory()->create();

    // Gửi yêu cầu POST đến route '/login' với thông tin đăng nhập của người dùng
    $response = $this->post('/login', [
        'email' => $user->email,
        'password' => 'password',
    ]);

    // Kiểm tra xem người dùng đã xác thực thành công hay không
    $this->assertAuthenticated();
    // Kiểm tra xem người dùng đã được chuyển hướng đến route RouteServiceProvider::HOME hay không
    $response->assertRedirect(RouteServiceProvider::HOME);
});

// Kiểm tra người dùng không thể xác thực với mật khẩu không đúng
test('users can not authenticate with invalid password', function () {
    // Tạo một người dùng mới
    $user = User::factory()->create();

    // Gửi yêu cầu POST đến route '/login' với thông tin đăng nhập của người dùng và mật khẩu không đúng
    $this->post('/login', [
        'email' => $user->email,
        'password' => 'wrong-password',
    ]);

    // Kiểm tra xem người dùng không được xác thực và vẫn ở trạng thái guest
    $this->assertGuest();
});

// Kiểm tra người dùng có thể đăng xuất
test('users can logout', function () {
    // Tạo một người dùng mới
    $user = User::factory()->create();

    // Đăng nhập người dùng và gửi yêu cầu POST đến route '/logout'
    $response = $this->actingAs($user)->post('/logout');

    // Kiểm tra xem người dùng đã đăng xuất thành công và trở về trạng thái guest
    $this->assertGuest();
    // Kiểm tra xem người dùng đã được chuyển hướng đến route '/' sau khi đăng xuất
    $response->assertRedirect('/');
});
