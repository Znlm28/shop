<?php

use App\Models\Product;
use App\Models\User;
use App\Models\Category;
use App\Models\ProductImage;
use App\Models\Review;

// Kiểm tra quan hệ một-nhiều với nghệ nhân (artisan)
it('belongs to an artisan', function () {
    // Tạo một nghệ nhân mới
    $artisan = User::factory()->create();
    // Tạo một sản phẩm thuộc về nghệ nhân đó
    $product = Product::factory()->create(['artisan_id' => $artisan->id]);

    // Kiểm tra xem sản phẩm có thuộc về nghệ nhân đúng không
    expect($product->artisan)->toBeInstanceOf(User::class);
});

// Kiểm tra quan hệ một-nhiều với danh mục (category)
it('belongs to a category', function () {
    // Tạo một danh mục mới
    $category = Category::factory()->create();
    // Tạo một sản phẩm thuộc về danh mục đó
    $product = Product::factory()->create(['category_id' => $category->id]);

    // Kiểm tra xem sản phẩm có thuộc về danh mục đúng không
    expect($product->category)->toBeInstanceOf(Category::class);
});

// Kiểm tra quan hệ một-nhiều với hình ảnh sản phẩm
it('has many images', function () {
    // Tạo một sản phẩm mới
    $product = Product::factory()->create();
    // Tạo một hình ảnh thuộc về sản phẩm đó
    $image = ProductImage::factory()->create(['product_id' => $product->id]);

    // Kiểm tra số lượng hình ảnh thuộc về sản phẩm
    expect($product->images)->toHaveCount(1);
    // Kiểm tra đối tượng đầu tiên trong danh sách hình ảnh có phải là đối tượng ProductImage không
    expect($product->images->first())->toBeInstanceOf(ProductImage::class);
});

// Kiểm tra quan hệ một-nhiều với đánh giá (review)
it('has many reviews', function () {
    // Tạo một sản phẩm mới
    $product = Product::factory()->create();
    // Tạo một đánh giá thuộc về sản phẩm đó
    $review = Review::factory()->create(['product_id' => $product->id]);

    // Kiểm tra số lượng đánh giá thuộc về sản phẩm
    expect($product->reviews)->toHaveCount(1);
    // Kiểm tra đối tượng đầu tiên trong danh sách đánh giá có phải là đối tượng Review không
    expect($product->reviews->first())->toBeInstanceOf(Review::class);
});

// Kiểm tra các thuộc tính fillable đúng
it('has correct fillable attributes', function () {
    $product = new Product();

    expect($product->getFillable())->toBe([
        'artisan_id',
        'category_id',
        'name',
        'description',
        'price',
        'quantity',
    ]);
});

// Kiểm tra các casts đúng
it('has correct casts', function () {
    $product = new Product();

    expect($product->getCasts())->toHaveKey('price', 'decimal:2');
    expect($product->getCasts())->toHaveKey('created_at', 'datetime');
    expect($product->getCasts())->toHaveKey('updated_at', 'datetime');
});

// Kiểm tra phương thức kiểm tra xem người dùng đã đánh giá sản phẩm chưa
it('can check if user has reviewed', function () {
    // Tạo một người dùng mới
    $user = User::factory()->create();
    // Tạo một sản phẩm mới
    $product = Product::factory()->create();
    // Tạo một đánh giá thuộc về sản phẩm đó từ người dùng đó
    $review = Review::factory()->create(['product_id' => $product->id, 'user_id' => $user->id]);

    // Kiểm tra xem người dùng đã đánh giá sản phẩm đúng không
    expect($product->hasUserReviewed($user->id))->toBeTrue();
    // Kiểm tra xem người dùng khác chưa đánh giá sản phẩm
    expect($product->hasUserReviewed(99999))->toBeFalse();
});

// Kiểm tra việc tạo mới sản phẩm
it('can be created', function () {
    $product = Product::create([
        'artisan_id' => User::factory()->create()->id,
        'category_id' => Category::factory()->create()->id,
        'name' => 'Handmade Vase',
        'description' => 'A beautifully crafted vase.',
        'price' => 99.99,
        'quantity' => 10,
    ]);

    // Kiểm tra xem sản phẩm đã được tạo trong cơ sở dữ liệu chưa
    $this->assertDatabaseHas('products', [
        'name' => 'Handmade Vase',
        'description' => 'A beautifully crafted vase.',
        'price' => 99.99,
        'quantity' => 10,
    ]);
});

// Kiểm tra việc cập nhật sản phẩm
it('can be updated', function () {
    // Tạo một sản phẩm mới
    $product = Product::factory()->create();

    // Cập nhật thông tin của sản phẩm
    $product->update(['name' => 'Updated Name']);

    // Kiểm tra xem thông tin đã được cập nhật trong cơ sở dữ liệu chưa
    $this->assertDatabaseHas('products', [
        'id' => $product->id,
        'name' => 'Updated Name',
    ]);
});
