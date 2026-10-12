# Lab 5: Create personalized invitation letters using the Mail Merge feature in LibreOffice Writer

## Aim
To create personalized invitation letters for several guests using Mail Merge.

## Files
| File | Purpose |
|---|---|
| `guests.csv` | Data source (name, designation, event, date, time, venue) |
| `invitation_template.txt` | Text of the main letter with the merge fields marked |
| `sample_merged_output.md` | What the merged letters look like |

## Procedure
1. Open `guests.csv` in LibreOffice Calc, check that the first row has the field names, and save it as `guests.ods`/keep as CSV.
2. Open Writer and type the letter from `invitation_template.txt` (leave the `<<Field>>` parts for now). Save it as `invitation_main.odt`.
3. Register the data source: **File > Wizards > Address Data Source**, choose *Other external data source* and *Next*, then *Settings*, choose **Text** type, browse to `guests.csv`, set Field separator = comma, and Finish. Name it `Guests`.
4. In Writer press `Ctrl+Shift+F4` to open the Data Sources panel and confirm that the `Guests` table opens.
5. Place the cursor where the name goes: **Insert > Field > More Fields > Database** tab, choose *Mail merge fields*, expand `Guests > guests`, select the `Name` field and click **Insert**. Repeat for `Event`, `Date`, `Time`, `Venue` and `Designation`.
6. Start the merge: **Tools > Mail Merge Wizard**. Follow the steps: select the current document, Letter, select the `Guests` address list, skip the address block and salutation (the fields were inserted manually), and **Finish**.
7. Choose **Save merged document** (one file) or **Print merged document**. Export to PDF to check that every guest has a personalized letter on its own page.

## Result
One personalized invitation letter was produced for each guest from a single main document and the data source.
