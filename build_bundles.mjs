import fs from 'node:fs';
import path from 'node:path';
import { execFileSync } from 'node:child_process';

const source = '/home/ubuntu/tawoos-pwa';
const demo = '/home/ubuntu/tawoos-pwa-demo';
fs.rmSync(demo, { recursive: true, force: true });
fs.cpSync(source, demo, { recursive: true });
const products = JSON.parse(fs.readFileSync(path.join(source, 'products.json'), 'utf8')).slice(0, 120).map((p, i) => ({
  code: `DEMO-${String(i + 1).padStart(4, '0')}`,
  name: `منتج تجريبي ${i + 1}`,
  wholesale: Number((25 + i * 3.5).toFixed(2)),
  retail: Number((35 + i * 4.25).toFixed(2)),
}));
const customers = JSON.parse(fs.readFileSync(path.join(source, 'customers.json'), 'utf8')).slice(0, 30).map((c, i) => ({
  code: `D${String(i + 1).padStart(3, '0')}`,
  name: `عميل تجريبي ${i + 1}`,
  city: ['طهطا', 'سوهاج', 'أسيوط'][i % 3],
  address: 'عنوان تجريبي',
  phone: `01000000${String(100 + i)}`,
}));
const history = customers.slice(0, 8).map((c, i) => ({
  customerCode: c.code,
  invoiceCount: i + 1,
  lastDate: '2026/08/26',
  items: [{ code: products[i].code, name: products[i].name, lastPrice: products[i].retail, mode: 'retail', lastDate: '2026/08/26', totalQty: i + 1 }],
}));
fs.writeFileSync(path.join(demo, 'products.json'), JSON.stringify(products, null, 2));
fs.writeFileSync(path.join(demo, 'customers.json'), JSON.stringify(customers, null, 2));
fs.writeFileSync(path.join(demo, 'customer_history.json'), JSON.stringify(history, null, 2));
fs.writeFileSync(path.join(demo, 'users.json'), fs.readFileSync(path.join(source, 'users.json')));
for (const file of ['.gitignore', 'items.csv']) fs.rmSync(path.join(demo, file), { force: true });
execFileSync('zip', ['-qr', '-FS', '/home/ubuntu/tawoos-pwa.zip', '.'], { cwd: source });
execFileSync('zip', ['-qr', '/home/ubuntu/tawoos-pwa-demo.zip', '.'], { cwd: demo });
console.log(`original=${fs.statSync('/home/ubuntu/tawoos-pwa.zip').size}`);
console.log(`demo=${fs.statSync('/home/ubuntu/tawoos-pwa-demo.zip').size}`);
console.log(`demo_products=${products.length} demo_customers=${customers.length}`);
