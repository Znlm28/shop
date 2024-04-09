<?php

use App\Models\Product;
use App\Models\Review;
use App\Models\User;

// Kiểm tra quan hệ nhiều-đến-một với sản phẩm (product)
it('belongs to a product', function () {
    // Tạo một sản phẩm mới
    $product = Product::factory()->create();
    // Tạo một đánh giá thuộc về sản phẩm đó
    $review = Review::factory()->create(['product_id' => $product->id]);

    // Kiểm tra xem đánh giá có thuộc về sản phẩm đúng không
    expect($review->product)->toBeInstanceOf(Product::class);
});

// Kiểm tra quan hệ nhiều-đến-một với người dùng (user)
it('belongs to a user', function () {
    // Tạo một người dùng mới
    $user = User::factory()->create();
    // Tạo một đánh giá thuộc về người dùng đó
    $review = Review::factory()->create(['user_id' => $user->id]);

    // Kiểm tra xem đánh giá có thuộc về người dùng đúng không
    expect($review->user)->toBeInstanceOf(User::class);
});

// Kiểm tra các thuộc tính fillable đúng
it('has correct fillable attributes', function () {
    $review = new Review();

    expect($review->getFillable())->toBe([
        'product_id',
        'user_id',
        'rating',
        'review',
    ]);
});

// Kiểm tra các casts đúng
it('has correct casts', function () {
    $review = new Review();

    expect($review->getCasts())->toHaveKey('created_at', 'datetime');
    expect($review->getCasts())->toHaveKey('updated_at', 'datetime');
    expect($review->getCasts())->toHaveKey('rating', 'integer');
});

// Kiểm tra việc tạo mới đánh giá
it('can be created', function () {
    $review = Review::create([
        'product_id' => Product::factory()->create()->id,
        'user_id' => User::factory()->create()->id,
        'rating' => 5,
        'review' => 'Great product!',
    ]);

    // Kiểm tra xem đánh giá đã được tạo trong cơ sở dữ liệu chưa
    $this->assertDatabaseHas('reviews', [
        'rating' => 5,
        'review' => 'Great product!',
    ]);
});

// Kiểm tra việc cập nhật thuộc tính
it('can update attributes', function () {
    // Tạo một đánh giá mới
    $review = Review::factory()->create();

    // Cập nhật thông tin của đánh giá
    $review->update(['rating' => 4, 'review' => 'Good, but could be better']);

    // Kiểm tra xem thông tin đã được cập nhật trong cơ sở dữ liệu chưa
    $this->assertDatabaseHas('reviews', [
        'id' => $review->id,
        'rating' => 4,
        'review' => 'Good, but could be better',
    ]);
});
