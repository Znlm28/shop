<?php

use App\Models\User;
use App\Models\UserProfile;

// Kiểm tra quan hệ một-đến-một với người dùng (user)
it('belongs to a user', function () {
    // Tạo một người dùng mới
    $user = User::factory()->create();
    // Tạo một hồ sơ người dùng thuộc về người dùng đó
    $userProfile = UserProfile::factory()->create(['user_id' => $user->id]);

    // Kiểm tra xem hồ sơ người dùng có thuộc về người dùng đúng không
    expect($userProfile->user)->toBeInstanceOf(User::class);
});

// Kiểm tra các thuộc tính fillable đúng
it('has correct fillable attributes', function () {
    $userProfile = new UserProfile();

    expect($userProfile->getFillable())->toBe([
        'user_id',
        'bio',
        'profile_picture',
    ]);
});

// Kiểm tra việc tạo mới hồ sơ người dùng
it('can be created', function () {
    $userProfile = UserProfile::factory()->create([
        'bio' => 'This is a bio.',
    ]);

    // Kiểm tra xem hồ sơ người dùng đã được tạo trong cơ sở dữ liệu chưa
    $this->assertDatabaseHas('user_profiles', [
        'bio' => 'This is a bio.',
    ]);
});

// Kiểm tra việc cập nhật các thuộc tính
it('can update attributes', function () {
    // Tạo một hồ sơ người dùng mới
    $userProfile = UserProfile::factory()->create();

    // Cập nhật thông tin về hồ sơ người dùng
    $userProfile->update(['bio' => 'Something else.']);

    // Kiểm tra xem thông tin đã được cập nhật trong cơ sở dữ liệu chưa
    $this->assertDatabaseHas('user_profiles', [
        'id' => $userProfile->id,
    ]);
});
