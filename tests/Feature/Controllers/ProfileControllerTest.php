<?php

use App\Models\User;

// Cập nhật thông tin hồ sơ người dùng
it('updates user profile information', function () {
    // Tạo người dùng mới
    $user = User::factory()->create();
    
    // Dữ liệu cập nhật mới
    $updatedData = [
        'name' => 'New Name',
        'email' => 'newemail@example.com',
    ];

    // Gửi yêu cầu cập nhật thông tin hồ sơ
    $this->actingAs($user)
        ->patch(route('profile.update', ['userID' => $user->id]), $updatedData)
        ->assertRedirect(route('profile.show', ['userID' => $user->id]))
        ->assertSessionHas('status', 'Profile updated successfully.');

    // Kiểm tra xem thông tin đã được cập nhật trong cơ sở dữ liệu chưa
    $this->assertDatabaseHas('users', [
        'id' => $user->id,
        'name' => 'New Name',
        'email' => 'newemail@example.com',
    ]);
});

// Xoá tài khoản người dùng
it('deletes the user account', function () {
    // Tạo người dùng mới
    $user = User::factory()->create();

    // Gửi yêu cầu xoá tài khoản người dùng
    $this->actingAs($user)
        ->delete(route('profile.destroy', ['userID' => $user->id]), ['password' => 'password'])
        ->assertRedirect('/')
        ->assertSessionHas('status');

    // Kiểm tra xem tài khoản người dùng đã được xoá khỏi cơ sở dữ liệu chưa
    $this->assertDatabaseMissing('users', ['id' => $user->id]);
});
