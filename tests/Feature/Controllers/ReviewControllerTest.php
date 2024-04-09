<?php

use App\Models\Product;
use App\Models\Review;
use App\Models\User;

// Lưu đánh giá mới
it('stores a new review', function () {
    // Tạo người dùng và sản phẩm mới
    $user = User::factory()->create();
    $product = Product::factory()->create();
    
    // Dữ liệu đánh giá mới
    $reviewData = [
        'product_id' => $product->id,
        'rating' => 5,
        'review' => 'Great product!',
    ];

    // Gửi yêu cầu lưu đánh giá mới
    $this->actingAs($user)
        ->postJson(route('reviews.store'), $reviewData)
        ->assertStatus(200)
        ->assertJson([
            'product_id' => $product->id,
            'user_id' => $user->id,
            'rating' => 5,
            'review' => 'Great product!',
        ]);

    // Kiểm tra xem đánh giá đã được lưu trong cơ sở dữ liệu chưa
    $this->assertDatabaseHas('reviews', [
        'product_id' => $product->id,
        'user_id' => $user->id,
        'rating' => 5,
        'review' => 'Great product!',
    ]);
});

// Cập nhật một đánh giá đã tồn tại
it('updates an existing review', function () {
    // Tạo người dùng và đánh giá mới
    $user = User::factory()->create();
    $review = Review::factory()->create(['user_id' => $user->id]);
    
    // Dữ liệu đánh giá cập nhật
    $updatedReviewData = ['rating' => 4, 'review' => 'Updated review text.'];

    // Gửi yêu cầu cập nhật đánh giá
    $this->actingAs($user)
        ->patchJson(route('reviews.update', $review), $updatedReviewData)
        ->assertStatus(200)
        ->assertJson([
            'rating' => 4,
            'review' => 'Updated review text.',
        ]);

    // Kiểm tra xem đánh giá đã được cập nhật trong cơ sở dữ liệu chưa
    $this->assertDatabaseHas('reviews', [
        'id' => $review->id,
        'rating' => 4,
        'review' => 'Updated review text.',
    ]);
});
