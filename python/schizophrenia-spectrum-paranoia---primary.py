# Catherine Morgan, Roger T Webb, Mathew J Carr, Evangelos Kontopantelis, Jonathan Green, Carolyn A Chew-Graham, Nav Kapur, Darren M Aschcroft, 2024.

import sys, csv, re

codes = [{"code":"E12z.00","system":"readv2"},{"code":"E121.00","system":"readv2"},{"code":"E134.00","system":"readv2"},{"code":"225E.00","system":"readv2"},{"code":"Eu22011","system":"readv2"},{"code":"Eu22015","system":"readv2"},{"code":"E12y000","system":"readv2"},{"code":"Eu24.12","system":"readv2"},{"code":"E133.00","system":"readv2"},{"code":"E123.00","system":"readv2"},{"code":"Eu23312","system":"readv2"}];
REQUIRED_CODES = 1;
with open(sys.argv[1], 'r') as file_in, open('schizophrenia-spectrum-potential-cases.csv', 'w', newline='') as file_out:
    csv_reader = csv.DictReader(file_in)
    csv_writer = csv.DictWriter(file_out, csv_reader.fieldnames + ["schizophrenia-spectrum-paranoia---primary-identified"])
    csv_writer.writeheader();
    codes_identified = 0;
    for row in csv_reader:
        newRow = row.copy();
        for cell in row:
            # Iterate cell lists (e.g. codes)
            for item in re.findall(r'\(([^,]*)\,', row[cell]):
                if(item in list(map(lambda code: code['code'], codes))): codes_identified+=1;
                if(codes_identified>=REQUIRED_CODES):
                    newRow["schizophrenia-spectrum-paranoia---primary-identified"] = "CASE";
                    break;
            if(codes_identified>=REQUIRED_CODES): break;
        if(codes_identified<REQUIRED_CODES):
            newRow["schizophrenia-spectrum-paranoia---primary-identified"] = "UNK";
        codes_identified=0;
        csv_writer.writerow(newRow)
