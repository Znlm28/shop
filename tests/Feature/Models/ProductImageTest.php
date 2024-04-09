<?php

use App\Models\Product;
use App\Models\ProductImage;

// Kiểm tra quan hệ một-nhiều với sản phẩm
it('belongs to a product', function () {
    // Tạo một sản phẩm mới
    $product = Product::factory()->create();
    // Tạo một hình ảnh sản phẩm thuộc sản phẩm đó
    $productImage = ProductImage::factory()->create(['product_id' => $product->id]);

    // Kiểm tra xem hình ảnh sản phẩm có thuộc sản phẩm đúng không
    expect($productImage->product)->toBeInstanceOf(Product::class);
});

// Kiểm tra các thuộc tính fillable đúng
it('has correct fillable attributes', function () {
    $productImage = new ProductImage();

    expect($productImage->getFillable())->toBe([
        'product_id',
        'image_path',
        'alt_text',
        'resized_image_path',
        'show_image_path',
        'thumbnail_image_path',
    ]);
});

// Kiểm tra các casts đúng
it('has correct casts', function () {
    $productImage = new ProductImage();

    expect($productImage->getCasts())->toHaveKey('created_at', 'datetime');
    expect($productImage->getCasts())->toHaveKey('updated_at', 'datetime');
});

// Kiểm tra việc tạo mới hình ảnh sản phẩm
it('can be created', function () {
    $productImage = ProductImage::create([
        'product_id' => Product::factory()->create()->id,
        'image_path' => 'images/example.jpg',
        'alt_text' => 'Example Image',
        'resized_image_path' => 'images/resized_example.jpg',
        'show_image_path' => 'images/show_example.jpg',
        'thumbnail_image_path' => 'images/thumbnail_example.jpg',
    ]);

    // Kiểm tra xem hình ảnh sản phẩm đã được lưu trong cơ sở dữ liệu chưa
    $this->assertDatabaseHas('product_images', [
        'image_path' => 'images/example.jpg',
        'alt_text' => 'Example Image',
        'resized_image_path' => 'images/resized_example.jpg',
        'show_image_path' => 'images/show_example.jpg',
        'thumbnail_image_path' => 'images/thumbnail_example.jpg',
    ]);
});

// Kiểm tra việc cập nhật các thuộc tính
it('can update attributes', function () {
    // Tạo một hình ảnh sản phẩm mới
    $productImage = ProductImage::factory()->create();

    // Cập nhật thuộc tính alt_text
    $productImage->update(['alt_text' => 'Updated Alt Text']);

    // Kiểm tra xem alt_text đã được cập nhật trong cơ sở dữ liệu chưa
    $this->assertDatabaseHas('product_images', [
        'id' => $productImage->id,
        'alt_text' => 'Updated Alt Text',
    ]);
});
