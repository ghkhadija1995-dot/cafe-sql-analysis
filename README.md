# ☕ Cafe Sales Analysis — MySQL Edition

مشروع تدريبي بسيط لتحليل مبيعات كافيه وهمي باستخدام **MySQL**، 

## 🗂️ هيكل قاعدة البيانات

جدول واحد فقط:

| العمود | النوع | الوصف |
|---|---|---|
| `order_id` | INT (AUTO_INCREMENT) | رقم الطلب |
| `order_date` | DATE | تاريخ الطلب |
| `item_name` | VARCHAR(50) | اسم الصنف |
| `category` | VARCHAR(20) | الفئة (Drinks / Food / Desserts) |
| `quantity` | INT | الكمية |
| `price` | DECIMAL(10,2) | سعر الوحدة |
| `branch` | VARCHAR(30) | الفرع |

## 📁 محتويات المشروع

```
cafe-sql-mysql/
├── schema.sql               -- إنشاء قاعدة البيانات والجدول
├── seed_data.sql             -- بيانات  (86 طلب خلال سنة 2024)
├── queries/
│   ├── 01_total_sales.sql
│   ├── 02_price_range.sql
│   ├── 03_average_order_value.sql
│   ├── 04_top_selling_items.sql
│   ├── 05_sales_by_category.sql
│   ├── 06_monthly_sales.sql
│   ├── 07_order_size_classification.sql
│   └── 08_below_average_items.sql
├── insights.md
└── README.md
```

## ❓ الأسئلة التحليلية

1. ما إجمالي المبيعات وعدد الطلبات؟
2. ما أعلى وأقل سعر لصنف؟
3. ما متوسط قيمة الطلب؟
4. ما أكثر 5 أصناف مبيعًا؟
5. ما إجمالي المبيعات لكل فئة؟
6. كيف تتغير المبيعات شهريًا؟
7. كيف نصنّف كل طلب حسب حجمه (صغير/متوسط/كبير)؟
8. ما الأصناف التي إيراداتها أقل من المتوسط؟

## 🛠️ الدوال المستخدمة

| الدالة | الاستخدام |
|---|---|
| `SUM()` | حساب الإيرادات الكلية |
| `COUNT()` | عدد الطلبات |
| `AVG()` | متوسط القيمة |
| `MAX()` / `MIN()` | أعلى/أقل سعر |
| `ROUND()` | تقريب الأرقام |
| `GROUP BY` | التجميع حسب الفئة/الصنف/الشهر |
| `ORDER BY` + `LIMIT` | الترتيب والأكثر/الأقل |
| `CASE WHEN` | تصنيف الطلبات |
| `DATE_FORMAT()` | استخراج الشهر من التاريخ (خاصة بـ MySQL) |
| `Subquery` + `HAVING` | مقارنة كل صنف بمتوسط عام |

## 🚀 طريقة التشغيل (MySQL)

```bash
mysql -u root -p < schema.sql
mysql -u root -p < seed_data.sql
mysql -u root -p cafe_db < queries/01_total_sales.sql
```

أو داخل MySQL Workbench: افتح كل ملف وشغّله بالترتيب (schema ثم seed_data ثم أي استعلام).
