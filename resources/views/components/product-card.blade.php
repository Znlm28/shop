<!-- Liên kết đến trang chi tiết sản phẩm -->
<a href="{{ route('products.show', $product->id) }}" class="group" data-category="{{ $product->category->name }}">
    <!-- Vùng chứa hình ảnh sản phẩm -->
    <div class="aspect-h-1 aspect-w-1 w-full overflow-hidden rounded-lg sm:aspect-h-3 sm:aspect-w-2">
        <!-- Hiển thị hình ảnh sản phẩm -->
        @if ($product->images->first())
            <img src="{{ Storage::url($product->images->first()->resized_image_path) }}"
                alt="{{ $product->images->first()->alt_text }}"
                class="h-full w-full object-cover object-center group-hover:opacity-75 transition-all delay-[10ms]" />
        @endif
    </div>
    <!-- Phần thông tin sản phẩm -->
    <div class="mt-4 flex items-center justify-between text-base font-medium text-text">
        <!-- Tên sản phẩm -->
        <h3 class="font-heading font-bold">{{ $product->name }}</h3>
        <!-- Giá sản phẩm -->
        <p>{{ number_format($product->price, 2) }} €</p>
    </div>
    <!-- Xếp hạng của sản phẩm -->
    <div class="flex items-center mt-2">
        <!-- Vòng lặp để hiển thị các ngôi sao đánh giá -->
        @foreach (range(1, 5) as $star)
            <svg class="h-5 w-5 flex-shrink-0 {{ $product->averageRating() >= $star ? 'text-yellow-400' : 'text-gray-300' }}"
                viewBox="0 0 20 20" fill="currentColor" aria-hidden="true">
                <path fill-rule="evenodd"
                    d="M10.868 2.884c-.321-.772-1.415-.772-1.736 0l-1.83 4.401-4.753.381c-.833.067-1.171 1.107-.536 1.651l3.62 3.102-1.106 4.637c-.194.813.691 1.456 1.405 1.02L10 15.591l4.069 2.485c.713.436 1.598-.207 1.404-1.02l-1.106-4.637 3.62-3.102c.635-.544.297-1.584-.536-1.65l-4.752-.382-1.831-4.401z"
                    clip-rule="evenodd" />
            </svg>
        @endforeach
    </div>
</a>
