<?php

use App\Models\ShoppingCart;
use App\Models\User;
use App\Models\Product;
use Illuminate\Foundation\Testing\RefreshDatabase;

uses(RefreshDatabase::class);

// Thêm một sản phẩm vào giỏ hàng của người dùng đã xác thực
it('adds a product to the authenticated user\'s shopping cart', function () {
    $user = User::factory()->create();
    $product = Product::factory()->create();
    $this->actingAs($user);
    $response = $this->post(route('cart.add'), [
        'product_id' => $product->id,
        'quantity' => 1,
    ]);
    $response->assertStatus(200);
    $response->assertJson(['success' => 'Product added to cart!']);
});

// Xoá một mục khỏi giỏ hàng bằng ID của nó
it('removes an item from the shopping cart by its item ID', function () {
    $user = User::factory()->create();
    $cartItem = ShoppingCart::factory()->create(['user_id' => $user->id]);
    $this->actingAs($user);
    $response = $this->delete(route('cart.remove', ['cartItem' => $cartItem->id]));
    $response->assertStatus(200);
    $response->assertJson(['success' => 'Product removed from cart!']);
});

// Chuyển hướng đến trang đăng nhập khi người dùng chưa xác thực
it('redirects to the login page when the user is not authenticated', function () {
    $product = Product::factory()->create();
    $response = $this->post(route('cart.add'), [
        'product_id' => $product->id,
        'quantity' => 1,
    ]);
    $response->assertRedirect(route('login'));
});

// Cập nhật số lượng của một sản phẩm đã tồn tại trong giỏ hàng
it('updates the quantity of a product that already exists in the cart', function () {
    $user = User::factory()->create();
    $product = Product::factory()->create();
    $cartItem = ShoppingCart::factory()->create([
        'user_id' => $user->id,
        'product_id' => $product->id,
        'quantity' => 1,
    ]);
    $this->actingAs($user);
    $response = $this->patch(route('cart.update', ['itemId' => $cartItem->id]), [
        'quantity' => 2,
    ]);
    $response->assertStatus(200);
    $response->assertJson(['success' => 'Cart updated successfully']);
    $cartItem->refresh();
    $this->assertEquals(2, $cartItem->quantity);
});

// Tạo một mục giỏ hàng mới khi sản phẩm không tồn tại trong giỏ hàng
it('creates a new cart item when the product does not exist in the cart', function () {
    $user = User::factory()->create();
    $product = Product::factory()->create();
    $this->actingAs($user);
    $response = $this->post(route('cart.add'), [
        'product_id' => $product->id,
        'quantity' => 1,
    ]);
    $response->assertStatus(200);
    $response->assertJson(['success' => 'Product added to cart!']);
    $this->assertDatabaseHas('shopping_carts', [
        'user_id' => $user->id,
        'product_id' => $product->id,
        'quantity' => 1,
    ]);
});

// TODO: FIX THIS TEST
// Xử lý thanh toán thành công
// test('processCheckout processes the checkout successfully', function () {
//     $user = User::factory()->create();
//     $product = Product::factory()->create(['price' => 100.00]);
//     ShoppingCart::factory()->create([
//         'user_id' => $user->id,
//         'product_id' => $product->id,
//         'quantity' => 1,
//     ]);

//     $checkoutData = [
//         'email' => 'test@example.com',
//         'phone_number' => '1234567890',
//         'first_name' => 'John',
//         'last_name' => 'Doe',
//         'address' => '123 Main St',
//         'city' => 'Anytown',
//         'country' => 'Country',
//         'state_province' => 'State',
//         'postal_code' => '12345',
//     ];

//     $response = $this
//         ->actingAs($user)
//         ->post('/checkout/process', $checkoutData);

//     $response->assertRedirect('checkout/success');
//     $response->assertSessionHas('success');
//     $response->assertSessionHas('transactionDetails');
// });
