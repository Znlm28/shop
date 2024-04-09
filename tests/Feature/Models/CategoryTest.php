<?php

use App\Models\Product;
use App\Models\Category;

// Kiểm tra mối quan hệ một-nhiều với sản phẩm
it('has many products', function () {
    // Tạo một danh mục mới
    $category = Category::factory()->create();
    
    // Tạo một sản phẩm thuộc danh mục đó
    $product = Product::factory()->create(['category_id' => $category->id]);

    // Kiểm tra danh mục có nhiều sản phẩm không
    expect($category->products)->toHaveCount(1);
    // Kiểm tra đầu tiên trong danh sách sản phẩm có phải là một đối tượng Product không
    expect($category->products->first())->toBeInstanceOf(Product::class);
});

// Kiểm tra các thuộc tính fillable đúng
it('has correct fillable attributes', function () {
    $category = new Category();

    expect($category->getFillable())->toBe(['name', 'description']);
});

// Kiểm tra các casts đúng
it('has correct casts', function () {
    $category = new Category();

    expect($category->getCasts())->toHaveKey('created_at', 'datetime');
    expect($category->getCasts())->toHaveKey('updated_at', 'datetime');
});

// Kiểm tra việc tạo mới danh mục
it('can be created', function () {
    $category = Category::create([
        'name' => 'Electronics',
        'description' => 'Electronic items',
    ]);

    // Kiểm tra xem danh mục đã được lưu trong cơ sở dữ liệu chưa
    $this->assertDatabaseHas('categories', [
        'name' => 'Electronics',
        'description' => 'Electronic items',
    ]);
});

// Kiểm tra việc cập nhật danh mục
it('can be updated', function () {
    // Tạo một danh mục mới
    $category = Category::factory()->create();

    // Cập nhật tên của danh mục
    $category->update(['name' => 'Updated Name']);

    // Kiểm tra xem danh mục đã được cập nhật trong cơ sở dữ liệu chưa
    $this->assertDatabaseHas('categories', [
        'id' => $category->id,
        'name' => 'Updated Name',
    ]);
});

// Kiểm tra việc tạo danh mục mà không có mô tả
test('category can be created without a description', function () {
    $category = new Category([
        'name' => 'Test Category',
    ]);

    // Kiểm tra xem tên của danh mục đã được đặt đúng không
    expect($category->name)->toBe('Test Category');
    // Kiểm tra mô tả của danh mục có là null không
    expect($category->description)->toBeNull();
});
