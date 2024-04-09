<?php

use App\Models\User;

// Kiểm tra mật khẩu có thể được xác nhận
test('password can be confirmed', function () {
    // Tạo một người dùng mới
    $user = User::factory()->create();

    // Gửi yêu cầu POST để xác nhận mật khẩu với mật khẩu hợp lệ
    $response = $this->actingAs($user)->post('/confirm-password', [
        'password' => 'password',
    ]);

    // Kiểm tra xem người dùng đã được chuyển hướng sau khi xác nhận mật khẩu thành công
    $response->assertRedirect();
    // Kiểm tra xem không có lỗi nào được trả về trong session
    $response->assertSessionHasNoErrors();
});

// Kiểm tra mật khẩu không được xác nhận với mật khẩu không hợp lệ
test('password is not confirmed with invalid password', function () {
    // Tạo một người dùng mới
    $user = User::factory()->create();

    // Gửi yêu cầu POST để xác nhận mật khẩu với mật khẩu không hợp lệ
    $response = $this->actingAs($user)->post('/confirm-password', [
        'password' => 'wrong-password',
    ]);

    // Kiểm tra xem có lỗi được trả về trong session
    $response->assertSessionHasErrors();
});
