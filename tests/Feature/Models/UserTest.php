<?php

use App\Models\Product;
use App\Models\Review;
use App\Models\Transaction;
use App\Models\User;

// Kiểm tra một người dùng có thể có nhiều sản phẩm
it('can have multiple products', function () {
    // Tạo một người dùng và liên kết với 3 sản phẩm
    $user = User::factory()->hasProducts(3)->create();

    // Kiểm tra xem người dùng có 3 sản phẩm không
    expect($user->products)->toHaveCount(3);
    // Kiểm tra xem mỗi sản phẩm của người dùng là một đối tượng Product
    expect($user->products->first())->toBeInstanceOf(Product::class);
});

// Kiểm tra một người dùng có thể có nhiều đánh giá
it('can have multiple reviews', function () {
    // Tạo một người dùng và liên kết với 3 đánh giá
    $user = User::factory()->has(Review::factory()->count(3))->create();

    // Kiểm tra xem người dùng có 3 đánh giá không
    expect($user->reviews)->toHaveCount(3);
    // Kiểm tra xem mỗi đánh giá của người dùng là một đối tượng Review
    expect($user->reviews->first())->toBeInstanceOf(Review::class);
});

// Kiểm tra một người dùng có thể có nhiều giao dịch như một người mua hàng
it('can have multiple transactions as a buyer', function () {
    // Tạo một người dùng và liên kết với 2 giao dịch
    $user = User::factory()->has(Transaction::factory()->count(2), 'transactions')->create();

    // Kiểm tra xem người dùng có 2 giao dịch không
    expect($user->transactions)->toHaveCount(2);
    // Kiểm tra xem mỗi giao dịch của người dùng là một đối tượng Transaction
    expect($user->transactions->first())->toBeInstanceOf(Transaction::class);
});

// Kiểm tra việc tạo mới người dùng
it('can be created', function () {
    // Tạo một người dùng với tên và email cụ thể
    $user = User::factory()->create([
        'name' => 'John Doe',
        'email' => 'john@example.com',
    ]);

    // Kiểm tra xem người dùng đã được tạo trong cơ sở dữ liệu chưa
    $this->assertDatabaseHas('users', [
        'name' => 'John Doe',
        'email' => 'john@example.com',
    ]);
});

// Kiểm tra việc cập nhật các thuộc tính của người dùng
it('can update attributes', function () {
    // Tạo một người dùng mới
    $user = User::factory()->create();

    // Cập nhật tên của người dùng
    $user->update(['name' => 'Jane Doe']);

    // Kiểm tra xem tên của người dùng đã được cập nhật trong cơ sở dữ liệu chưa
    $this->assertDatabaseHas('users', [
        'id' => $user->id,
        'name' => 'Jane Doe',
    ]);
});

// Kiểm tra các thuộc tính bị ẩn
it('hides certain attributes', function () {
    // Tạo một người dùng mới
    $user = User::factory()->create();

    // Chuyển người dùng thành mảng
    $userArray = $user->toArray();

    // Kiểm tra xem mảng người dùng có chứa các thuộc tính password và remember_token không
    expect($userArray)->not->toHaveKey('password');
    expect($userArray)->not->toHaveKey('remember_token');
});
