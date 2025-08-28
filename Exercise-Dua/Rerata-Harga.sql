select promo_id, avg(price) as "rerata harga" from products group by promo_id having avg(price) < 16000;

-- ATAU HANYA MENAMPILKAN DATA YANG TIDAK NULL AJA

select promo_id, avg(price) as "rerata harga" from products where promo_id is not null group by promo_id having avg(price) < 16000;