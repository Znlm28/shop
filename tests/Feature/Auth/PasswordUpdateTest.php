<?php

use App\Models\User;
use Illuminate\Support\Facades\Hash;

// Kiểm tra xem mật khẩu có thể được cập nhật
test('password can be updated', function () {
    // Tạo một người dùng mới
    $user = User::factory()->create();

    // Gửi yêu cầu PUT để cập nhật mật khẩu
    $response = $this
        ->actingAs($user)
        ->from('/profile')
        ->put('/password', [
            'current_password' => 'password',
            'password' => 'new-password',
            'password_confirmation' => 'new-password',
        ]);

    // Kiểm tra xem không có lỗi nào được trả về trong session và đã chuyển hướng đến trang "/profile"
    $response
        ->assertSessionHasNoErrors()
        ->assertRedirect('/profile');

    // Kiểm tra xem mật khẩu đã được cập nhật thành công trong cơ sở dữ liệu
    $this->assertTrue(Hash::check('new-password', $user->refresh()->password));
});

// Kiểm tra xem mật khẩu hiện tại phải được cung cấp đúng để cập nhật mật khẩu
test('correct password must be provided to update password', function () {
    // Tạo một người dùng mới
    $user = User::factory()->create();

    // Gửi yêu cầu PUT để cập nhật mật khẩu với mật khẩu hiện tại không chính xác
    $response = $this
        ->actingAs($user)
        ->from('/profile')
        ->put('/password', [
            'current_password' => 'wrong-password',
            'password' => 'new-password',
            'password_confirmation' => 'new-password',
        ]);

    // Kiểm tra xem lỗi được trả về trong session và đã chuyển hướng đến trang "/profile"
    $response
        ->assertSessionHasErrorsIn('updatePassword', 'current_password')
        ->assertRedirect('/profile');
});
