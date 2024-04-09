<?php

use App\Models\Transaction;
use App\Models\User;
use App\Models\Product;

// Kiểm tra quan hệ một-đến-nhiều với người mua (buyer)
it('belongs to a buyer', function () {
    // Tạo một người dùng mới
    $user = User::factory()->create();
    // Tạo một giao dịch thuộc về người mua đó
    $transaction = Transaction::factory()->create(['buyer_id' => $user->id]);

    // Kiểm tra xem giao dịch có thuộc về người mua đúng không
    expect($transaction->buyer)->toBeInstanceOf(User::class);
});

// Kiểm tra quan hệ một-đến-một với sản phẩm (product)
it('belongs to a product', function () {
    // Tạo một sản phẩm mới
    $product = Product::factory()->create();
    // Tạo một giao dịch thuộc về sản phẩm đó
    $transaction = Transaction::factory()->create(['product_id' => $product->id]);

    // Kiểm tra xem giao dịch có thuộc về sản phẩm đúng không
    expect($transaction->product)->toBeInstanceOf(Product::class);
});

// Kiểm tra các thuộc tính fillable đúng
it('has correct fillable attributes', function () {
    $transaction = new Transaction();

    expect($transaction->getFillable())->toBe([
        'buyer_id',
        'product_id',
        'quantity',
        'total_price',
        'status',
    ]);
});

// Kiểm tra các kiểu dữ liệu casts đúng
it('has correct casts', function () {
    $transaction = new Transaction();

    expect($transaction->getCasts())->toHaveKey('total_price', 'decimal:2');
    expect($transaction->getCasts())->toHaveKey('created_at', 'datetime');
    expect($transaction->getCasts())->toHaveKey('updated_at', 'datetime');
});

// Kiểm tra việc tạo mới giao dịch
it('can be created', function () {
    $transaction = Transaction::factory()->create([
        'quantity' => 2,
        'total_price' => 200.00,
        'status' => 'completed'
    ]);

    // Kiểm tra xem giao dịch đã được tạo trong cơ sở dữ liệu chưa
    $this->assertDatabaseHas('transactions', [
        'quantity' => 2,
        'total_price' => 200.00,
        'status' => 'completed',
    ]);
});

// Kiểm tra việc cập nhật các thuộc tính
it('can update attributes', function () {
    // Tạo một giao dịch mới
    $transaction = Transaction::factory()->create();

    // Cập nhật trạng thái của giao dịch
    $transaction->update(['status' => 'cancelled']);

    // Kiểm tra xem trạng thái đã được cập nhật trong cơ sở dữ liệu chưa
    $this->assertDatabaseHas('transactions', [
        'id' => $transaction->id,
        'status' => 'cancelled',
    ]);
});
