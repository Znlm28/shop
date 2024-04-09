<?php

use App\Models\Product;
use App\Models\ShoppingCart;
use App\Models\User;

// Kiểm tra quan hệ nhiều-đến-một với người dùng (user)
it('belongs to a user', function () {
    // Tạo một người dùng mới
    $user = User::factory()->create();
    // Tạo một mục giỏ hàng thuộc về người dùng đó
    $cartItem = ShoppingCart::factory()->create(['user_id' => $user->id]);

    // Kiểm tra xem mục giỏ hàng có thuộc về người dùng đúng không
    expect($cartItem->user)->toBeInstanceOf(User::class);
});

// Kiểm tra quan hệ nhiều-đến-một với sản phẩm (product)
it('belongs to a product', function () {
    // Tạo một sản phẩm mới
    $product = Product::factory()->create();
    // Tạo một mục giỏ hàng thuộc về sản phẩm đó
    $cartItem = ShoppingCart::factory()->create(['product_id' => $product->id]);

    // Kiểm tra xem mục giỏ hàng có thuộc về sản phẩm đúng không
    expect($cartItem->product)->toBeInstanceOf(Product::class);
});

// Kiểm tra các thuộc tính fillable đúng
it('has correct fillable attributes', function () {
    $cartItem = new ShoppingCart();

    expect($cartItem->getFillable())->toBe([
        'user_id',
        'product_id',
        'quantity',
    ]);
});

// Kiểm tra tính toán tổng giá đúng
it('calculates total price correctly', function () {
    // Tạo một sản phẩm có giá 100.00
    $product = Product::factory()->create(['price' => 100.00]);
    // Tạo một mục giỏ hàng với sản phẩm đó và số lượng là 2
    $cartItem = ShoppingCart::factory()->create([
        'product_id' => $product->id,
        'quantity' => 2
    ]);

    // Kiểm tra xem tổng giá đã tính đúng không
    expect($cartItem->total_price)->toBe(200.00);
});

// Kiểm tra việc tạo mới mục giỏ hàng
it('can be created', function () {
    $cartItem = ShoppingCart::create([
        'user_id' => User::factory()->create()->id,
        'product_id' => Product::factory()->create()->id,
        'quantity' => 3,
    ]);

    // Kiểm tra xem mục giỏ hàng đã được tạo trong cơ sở dữ liệu chưa
    $this->assertDatabaseHas('shopping_carts', [
        'quantity' => 3,
    ]);
});

// Kiểm tra việc cập nhật số lượng
it('can update quantity', function () {
    // Tạo một mục giỏ hàng mới
    $cartItem = ShoppingCart::factory()->create();

    // Cập nhật số lượng của mục giỏ hàng
    $cartItem->update(['quantity' => 5]);

    // Kiểm tra xem số lượng đã được cập nhật trong cơ sở dữ liệu chưa
    $this->assertDatabaseHas('shopping_carts', [
        'id' => $cartItem->id,
        'quantity' => 5,
    ]);
});
