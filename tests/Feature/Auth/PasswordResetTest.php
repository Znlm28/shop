<?php

use App\Models\User;
use Illuminate\Auth\Notifications\ResetPassword;
use Illuminate\Support\Facades\Notification;

// Kiểm tra xem liên kết đặt lại mật khẩu có thể được yêu cầu
test('reset password link can be requested', function () {
    // Giả lập các thông báo để không gửi thực sự email
    Notification::fake();

    // Tạo một người dùng mới
    $user = User::factory()->create();

    // Gửi yêu cầu POST để yêu cầu liên kết đặt lại mật khẩu
    $this->post('/forgot-password', ['email' => $user->email]);

    // Kiểm tra xem thông báo ResetPassword đã được gửi đến người dùng
    Notification::assertSentTo($user, ResetPassword::class);
});

// Kiểm tra xem mật khẩu có thể được đặt lại với token hợp lệ
test('password can be reset with valid token', function () {
    // Giả lập các thông báo để không gửi thực sự email
    Notification::fake();

    // Tạo một người dùng mới
    $user = User::factory()->create();

    // Gửi yêu cầu POST để yêu cầu liên kết đặt lại mật khẩu
    $this->post('/forgot-password', ['email' => $user->email]);

    // Kiểm tra xem thông báo ResetPassword đã được gửi đến người dùng và thực hiện đặt lại mật khẩu với token hợp lệ
    Notification::assertSentTo($user, ResetPassword::class, function ($notification) use ($user) {
        // Gửi yêu cầu POST để đặt lại mật khẩu với thông tin hợp lệ
        $response = $this->post('/reset-password', [
            'token' => $notification->token,
            'email' => $user->email,
            'password' => 'password',
            'password_confirmation' => 'password',
        ]);

        // Kiểm tra xem không có lỗi nào được trả về trong session
        $response->assertSessionHasNoErrors();

        return true;
    });
});
