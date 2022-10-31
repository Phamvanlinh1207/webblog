-- phpMyAdmin SQL Dump
-- version 5.2.0-rc1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: localhost:3306
-- Thời gian đã tạo: Th10 31, 2022 lúc 09:54 AM
-- Phiên bản máy phục vụ: 8.0.30
-- Phiên bản PHP: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `webblog`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `categories`
--

CREATE TABLE `categories` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(1024) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `categories`
--

INSERT INTO `categories` (`id`, `name`, `description`, `created_at`, `updated_at`) VALUES
(1, 'Aodai', 'Văn', NULL, '2022-09-05 00:24:05'),
(2, 'Prof. Graham Balistreri DDS', 'Et et totam inventore iusto alias dolore qui.', '2022-08-27 19:11:07', '2022-08-27 19:11:07'),
(3, 'Wendell Jacobi', 'Sit eos labore at saepe illo quia ab.', '2022-08-27 19:11:07', '2022-08-27 19:11:07'),
(4, 'Bert Hill', 'Alias ipsam doloremque iste minus.', '2022-08-27 19:11:07', '2022-08-27 19:11:07'),
(5, 'Ray Swaniawski Sr.', 'Est et impedit aliquid nulla non ut repellat.', '2022-08-27 19:11:07', '2022-08-27 19:11:07'),
(6, 'Shane Bauch', 'Aut nisi dignissimos nobis eius.', '2022-08-27 19:11:07', '2022-08-27 19:11:07'),
(7, 'Annalise Murphy', 'Et eos nostrum voluptas dolores quam magnam alias.', '2022-08-27 19:11:07', '2022-08-27 19:11:07'),
(8, 'Prof. Willis Schuppe', 'Repudiandae voluptatibus deleniti ut nemo omnis fuga.', '2022-08-27 19:11:07', '2022-08-27 19:11:07'),
(9, 'Ethyl Hermann', 'Deleniti et ab nihil totam.', '2022-08-27 19:11:07', '2022-08-27 19:11:07'),
(10, 'Angeline Jones', 'In error quod ex expedita.', '2022-08-27 19:11:07', '2022-08-27 19:11:07'),
(11, 'Mrs. Alivia Dach MD', 'Vero enim ratione eos repellat corrupti.', '2022-08-27 19:11:07', '2022-08-27 19:11:07');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2022_08_17_142405_create_categories_table', 1),
(6, '2022_08_17_144859_create_products_table', 2),
(7, '2022_08_17_145307_create_orders_table', 2),
(8, '2022_08_17_145414_create_order_detail_table', 2),
(9, '2022_08_17_145607_create_add_role_to_users_table', 3);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `orders`
--

CREATE TABLE `orders` (
  `id` bigint UNSIGNED NOT NULL,
  `code` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `orders`
--

INSERT INTO `orders` (`id`, `code`, `status`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'Eos qui et nobis reprehenderit asperiores sint doloribus', 'Chưa xử lý', 9, '2022-08-27 19:36:28', '2022-09-03 05:10:31'),
(2, 'Odit doloribus alias ex sunt provident animi consequatur in.', 'Chưa xử lý', 6, '2022-08-27 19:36:28', '2022-09-03 05:12:40'),
(3, 'Minima amet vitae nostrum dolorem nihil autem vel.', 'Et ea doloremque in aperiam quis omnis.', 4, '2022-08-27 19:36:28', '2022-08-27 19:36:28'),
(4, 'Dolores dignissimos rem vel.', 'Đã Xử lý', 4, '2022-08-27 19:36:28', '2022-09-03 05:15:03'),
(5, 'Totam sit nihil doloremque asperiores nihil aperiam.', 'Vel dignissimos soluta delectus dignissimos saepe aliquid sint.', 3, '2022-08-27 19:36:28', '2022-08-27 19:36:28'),
(6, 'Iste tenetur sunt quasi quaerat eos et officiaá', 'Quia voluptas voluptate occaecati voluptatem dolor enim.', 10, '2022-08-27 19:36:28', '2022-09-02 05:02:33'),
(7, 'Soluta et est vel.', 'Qui mollitia eos ut enim est.', 9, '2022-08-27 19:36:28', '2022-08-27 19:36:28'),
(8, 'Eos et autem qui qui et.', 'Xử lý', 6, '2022-08-27 19:36:28', '2022-09-03 05:13:37'),
(9, 'Atque optio blanditiis aliquid aut.', 'Laboriosam maiores fugiat eum magnam quisquam fugit architecto.', 9, '2022-08-27 19:36:28', '2022-08-27 19:36:28'),
(10, 'Consequatur deleniti perspiciatis eligendi consequuntur vel fugit.', 'Incidunt et sit omnis nihil qui.', 9, '2022-08-27 19:36:28', '2022-08-27 19:36:28');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `order_detail`
--

CREATE TABLE `order_detail` (
  `id` bigint UNSIGNED NOT NULL,
  `product_id` int NOT NULL,
  `order_id` int NOT NULL,
  `quantity` int NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `order_detail`
--

INSERT INTO `order_detail` (`id`, `product_id`, `order_id`, `quantity`, `created_at`, `updated_at`) VALUES
(1, 9, 2, 5, '2022-08-27 19:43:31', '2022-08-27 19:43:31'),
(2, 3, 7, 4, '2022-08-27 19:43:31', '2022-08-27 19:43:31'),
(3, 6, 3, 2, '2022-08-27 19:43:31', '2022-08-27 19:43:31'),
(4, 4, 4, 8, '2022-08-27 19:43:31', '2022-08-27 19:43:31'),
(5, 3, 5, 7, '2022-08-27 19:43:31', '2022-08-27 19:43:31'),
(6, 1, 1, 4, '2022-08-27 19:43:31', '2022-08-27 19:43:31'),
(7, 5, 3, 7, '2022-08-27 19:43:31', '2022-08-27 19:43:31'),
(8, 5, 6, 9, '2022-08-27 19:43:31', '2022-08-27 19:43:31'),
(9, 2, 10, 6, '2022-08-27 19:43:31', '2022-08-27 19:43:31'),
(10, 7, 10, 3, '2022-08-27 19:43:31', '2022-08-27 19:43:31');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `products`
--

CREATE TABLE `products` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `img` varchar(1024) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(1024) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` double(8,2) NOT NULL,
  `quantity` int NOT NULL,
  `category_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `products`
--

INSERT INTO `products` (`id`, `name`, `img`, `description`, `price`, `quantity`, `category_id`, `created_at`, `updated_at`) VALUES
(5, 'Dr. Jimmy Hamill IV', 'http://127.0.0.1:8000/img/product/p1.jpg', 'Sit accusantium repellendus saepe ex nobis.', 5.00, 2, 5, '2022-08-27 19:22:31', '2022-08-27 19:22:31'),
(8, 'Eloisa Ward', 'http://127.0.0.1:8000/img/product/p1.jpg', 'Non impedit qui qui dolores consequuntur.', 3.00, 2, 3, '2022-08-27 19:22:31', '2022-08-27 19:22:31'),
(9, 'Madisyn Thompson', 'http://127.0.0.1:8000/img/product/p1.jpg', 'Corporis ad dolores fuga deleniti dolorum et.', 7.00, 4, 4, '2022-08-27 19:22:31', '2022-08-27 19:22:31'),
(10, 'Saul Macejkovic PhD', 'http://127.0.0.1:8000/img/product/p1.jpg', 'Sapiente explicabo veniam doloremque.', 8.00, 7, 5, '2022-08-27 19:22:31', '2022-08-27 19:22:31'),
(11, 'Coty Kub', 'http://127.0.0.1:8000/img/product/p1.jpg', 'Laudantium et assumenda est.', 0.00, 7, 5, '2022-08-27 20:56:55', '2022-08-27 20:56:55'),
(13, 'Ms. Retha Haag II', 'http://127.0.0.1:8000/img/product/p1.jpg', 'Voluptates consequuntur recusandae in sed.', 6.00, 0, 2, '2022-08-27 20:56:55', '2022-08-27 20:56:55'),
(15, 'Ethan Ullrich', 'http://127.0.0.1:8000/img/product/p1.jpg', 'Libero optio alias aut et doloribus doloremque aspernatur.', 3.00, 2, 4, '2022-08-27 20:56:55', '2022-08-27 20:56:55'),
(17, 'Dr. Grady Larkin I', 'http://127.0.0.1:8000/img/product/p1.jpg', 'Officia voluptatum porro ea libero.', 9.00, 0, 1, '2022-08-27 20:56:55', '2022-08-27 20:56:55'),
(23, 'Mrs. Julianne Effertz', 'http://127.0.0.1:8000/img/product/p1.jpg', 'Aperiam voluptatem nihil quia explicabo nam.', 5.00, 2, 3, '2022-08-27 20:56:55', '2022-08-27 20:56:55');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `role` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'user'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `role`) VALUES
(1, 'Dr. Glennie Kirlin II', 'phamvanlinh9b.lhp@gmail.com', '2022-08-27 19:36:11', '12072002', 'Vjoaa7vUaZ', '2022-08-27 19:36:11', '2022-08-27 19:36:11', 'non'),
(2, 'Hazel Gerhold', 'gkohler@example.net', '2022-08-27 19:36:11', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'kGRqNFnqZ5', '2022-08-27 19:36:11', '2022-08-27 19:36:11', 'quae'),
(3, 'Cary Mayer', 'bridget.harvey@example.com', '2022-08-27 19:36:11', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'trq0Pr9fgJ', '2022-08-27 19:36:11', '2022-08-27 19:36:11', 'sequi'),
(4, 'Fleta Raynor MD', 'jonathon51@example.com', '2022-08-27 19:36:11', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'EFfJWoU1gC', '2022-08-27 19:36:11', '2022-08-27 19:36:11', 'rerum'),
(5, 'Desmond Hirthe', 'greg64@example.net', '2022-08-27 19:36:11', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '8NNllI186W', '2022-08-27 19:36:11', '2022-08-27 19:36:11', 'nisi'),
(6, 'Mrs. Leola Schuster', 'mohammed.ohara@example.com', '2022-08-27 19:36:11', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'fxsCdAAGyD', '2022-08-27 19:36:11', '2022-08-27 19:36:11', 'et'),
(7, 'Brock Rodriguez I', 'bhegmann@example.net', '2022-08-27 19:36:11', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'vcHMYh4FnN', '2022-08-27 19:36:11', '2022-08-27 19:36:11', 'ipsa'),
(8, 'Prof. Tyra Deckow', 'hpurdy@example.com', '2022-08-27 19:36:11', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'uNc33USO04', '2022-08-27 19:36:11', '2022-08-27 19:36:11', 'aut'),
(9, 'Abby Windler', 'bart18@example.org', '2022-08-27 19:36:11', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '9wwZjHTboC', '2022-08-27 19:36:11', '2022-08-27 19:36:11', 'dignissimos'),
(10, 'Jaqueline Gorczany', 'ycassin@example.org', '2022-08-27 19:36:11', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '9E37zHlniN', '2022-08-27 19:36:11', '2022-08-27 19:36:11', 'quia'),
(11, 'phamvanlinh', 'vanlinh@gmail.com', NULL, '$2y$10$at256uWGj9otPM0CY0Dx8ub04QOaQXT9Aiyh/KjOhQZO7u9IrrKI6', 'ax9Uzgr9CS2DN9jx8Z3bfiOWzfEgL7DF7J8kRRz21XxdwCfsXnbXcM4dKxUB', '2022-09-14 19:05:47', '2022-09-14 19:05:47', 'user'),
(12, 'vanlinh', 'vanlinh123@gmail.com', NULL, '$2y$10$tl/YtA.Z.V4wWRRIlTtK9On4nO2yeUkCcOUdArEXiV5t.vSoi6Wqi', NULL, '2022-10-12 20:04:51', '2022-10-12 20:04:51', 'user'),
(13, 'Phạm Văn Lĩnh', 'linh@gmail.com', NULL, '$2y$10$GupdPU4nRjYlKMhkAl9hFuSjiLcMPdvA6UROs1dBI/Nas00QjNyj.', NULL, '2022-10-27 02:37:57', '2022-10-27 02:37:57', 'user');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Chỉ mục cho bảng `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `orders_user_id_foreign` (`user_id`);

--
-- Chỉ mục cho bảng `order_detail`
--
ALTER TABLE `order_detail`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Chỉ mục cho bảng `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Chỉ mục cho bảng `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `products_category_id_foreign` (`category_id`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT cho bảng `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT cho bảng `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT cho bảng `order_detail`
--
ALTER TABLE `order_detail`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT cho bảng `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Các ràng buộc cho bảng `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
