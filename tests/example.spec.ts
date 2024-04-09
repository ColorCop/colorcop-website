import { test, expect } from '@playwright/test';


var domain  = 'colorcop.net';

test.describe('loading domain when protocol is http', () => {
  test.beforeEach(async ({ page }) => {
    await page.goto(`http://${domain}/`);
  });

  test('should redirect to https', async ({ page }) => {
    await expect(page).toHaveURL(`https://${domain}/`);
  });
});