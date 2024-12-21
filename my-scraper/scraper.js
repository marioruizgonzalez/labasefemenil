const puppeteer = require('puppeteer');

(async () => {
  const browser = await puppeteer.launch();
  const page = await browser.newPage();
  await page.goto('https://www.ligafemenil.mx/cancha/tablas/tablaGoleoCompleta/sp/54eaca472140c4', { waitUntil: 'networkidle0' }); // URL of the page you want to scrape

  // Wait for the dynamic content to load
  await page.waitForSelector('tbl_goleos'); // Modify this to target a specific part of the page

  // Extract data
  const result = await page.evaluate(() => {
    let data = [];
    // Example: Extracting text from each row in a specific table
    document.querySelectorAll('table tbody tr').forEach((row) => {
      let rowData = {};
      rowData.position = row.querySelector('td:nth-child(1)').innerText;
      rowData.player = row.querySelector('td:nth-child(2)').innerText;
      rowData.club = row.querySelector('td:nth-child(3)').innerText;
      rowData.goals = row.querySelector('td:nth-child(4)').innerText;
      rowData.playedMinutes = row.querySelector('td:nth-child(5)').innerText;
      rowData.rate = row.querySelector('td:nth-child(6)').innerText;
      rowData.nationality = row.querySelector('td:nth-child(7)').innerText;
      data.push(rowData);
    });
    return data;
  });

  console.log(result);
  await browser.close();
})();
