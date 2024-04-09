<!-- Thông báo khi liên hệ thành công -->

<div aria-live="assertive" class="pointer-events-none fixed inset-0 flex px-4 py-6 items-start z-[100]">
    <div class="flex w-full flex-col items-center space-y-4 sm:items-end">
        <!-- Phần thông báo được hiển thị khi liên hệ thành công -->
        <div x-cloak x-show="contactSuccessAlert" x-transition:enter="transform ease-out duration-300 transition"
            x-transition:enter-start="translate-y-2 opacity-0 sm:translate-y-0 sm:translate-x-2"
            x-transition:enter-end="translate-y-0 opacity-100 sm:translate-x-0"
            x-transition:leave="transition ease-in duration-100" x-transition:leave-start="opacity-100"
            x-transition:leave-end="opacity-0"
            class="pointer-events-auto w-full max-w-sm overflow-hidden rounded-lg bg-white shadow-lg ring-1 ring-black ring-opacity-5">
            <div class="p-4">
                <div class="flex items-start">
                    <div class="flex-shrink-0">
                        <!-- Biểu tượng xác nhận khi liên hệ thành công -->
                        <svg class="h-6 w-6 text-green-400" fill="none" viewBox="0 0 24 24" stroke-width="1.5"
                            stroke="currentColor" aria-hidden="true">
                            <path stroke-linecap="round" stroke-linejoin="round"
                                d="M9 12.75L11.25 15 15 9.75M21 12a9 9 0 11-18 0 9 9 0 0118 0z" />
                        </svg>
                    </div>
                    <div class="ml-3 w-0 flex-1 pt-0.5">
                        <!-- Tiêu đề thông báo liên hệ thành công -->
                        <h3 class="text-lg font-medium text-text">Message sent successfully!</h3>
                        <!-- Nội dung thông báo liên hệ thành công -->
                        <p class="mt-1 text-sm text-gray-500">Thank you for reaching out to us. We have received your
                            message and will get back to you as soon as possible.</p>
                    </div>
                    <div class="ml-4 flex flex-shrink-0">
                        <!-- Nút đóng thông báo -->
                        <button @click="contactSuccessAlert = false" type="button"
                            class="inline-flex rounded-md bg-white text-gray-400 hover:text-gray-500 focus:outline-none focus:ring-2 focus:ring-indigo-500 focus:ring-offset-2">
                            <span class="sr-only">Close</span>
                            <!-- Biểu tượng đóng -->
                            <svg class="h-5 w-5" viewBox="0 0 20 20" fill="currentColor" aria-hidden="true">
                                <path
                                    d="M6.28 5.22a.75.75 0 00-1.06 1.06L8.94 10l-3.72 3.72a.75.75 0 101.06 1.06L10 11.06l3.72 3.72a.75.75 0 101.06-1.06L11.06 10l3.72-3.72a.75.75 0 00-1.06-1.06L10 8.94 6.28 5.22z" />
                            </svg>
                        </button>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
