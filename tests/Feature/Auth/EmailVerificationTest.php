<?php

use App\Models\User;
use App\Providers\RouteServiceProvider;
use Illuminate\Auth\Events\Verified;
use Illuminate\Support\Facades\Event;
use Illuminate\Support\Facades\URL;

// Kiểm tra email có thể được xác minh
test('email can be verified', function () {
    // Tạo một người dùng mới chưa xác minh email
    $user = User::factory()->create([
        'email_verified_at' => null,
    ]);

    // Giả lập sự kiện
    Event::fake();

    // Tạo URL tạm thời để xác minh email
    $verificationUrl = URL::temporarySignedRoute(
        'verification.verify',
        now()->addMinutes(60),
        ['id' => $user->id, 'hash' => sha1($user->email)]
    );

    // Gửi yêu cầu GET đến URL xác minh email với người dùng đăng nhập
    $response = $this->actingAs($user)->get($verificationUrl);

    // Kiểm tra xem sự kiện Verified đã được phát ra
    Event::assertDispatched(Verified::class);
    // Kiểm tra xem email của người dùng đã được xác minh thành công
    expect($user->fresh()->hasVerifiedEmail())->toBeTrue();
    // Kiểm tra xem người dùng đã được chuyển hướng đến RouteServiceProvider::HOME với thông báo xác minh email thành công
    $response->assertRedirect(RouteServiceProvider::HOME . '?verified=1');
});

// Kiểm tra email không được xác minh với hash không hợp lệ
test('email is not verified with invalid hash', function () {
    // Tạo một người dùng mới chưa xác minh email
    $user = User::factory()->create([
        'email_verified_at' => null,
    ]);

    // Tạo URL tạm thời với hash không hợp lệ để xác minh email
    $verificationUrl = URL::temporarySignedRoute(
        'verification.verify',
        now()->addMinutes(60),
        ['id' => $user->id, 'hash' => sha1('wrong-email')]
    );

    // Gửi yêu cầu GET đến URL xác minh email với người dùng đăng nhập
    $this->actingAs($user)->get($verificationUrl);

    // Kiểm tra xem email của người dùng vẫn chưa được xác minh
    expect($user->fresh()->hasVerifiedEmail())->toBeFalse();
});
