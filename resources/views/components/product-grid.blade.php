<section aria-labelledby="products-heading" class="mt-8">
    <!-- Tiêu đề của phần sản phẩm, không hiển thị trên giao diện nhưng được trình duyệt đọc -->
    <h2 id="products-heading" class="sr-only">Products</h2>
    <!-- Danh sách sản phẩm -->
    <div class="grid grid-cols-1 gap-x-6 gap-y-10 sm:grid-cols-2 lg:grid-cols-3 xl:gap-x-8">
        <!-- Vòng lặp qua mỗi sản phẩm và sử dụng component 'product-card' để hiển thị -->
        @foreach ($products as $product)
            <x-product-card :product="$product"></x-product-card>
        @endforeach
    </div>
</section>
