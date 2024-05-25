# Catherine Morgan, Roger T Webb, Mathew J Carr, Evangelos Kontopantelis, Jonathan Green, Carolyn A Chew-Graham, Nav Kapur, Darren M Aschcroft, 2024.

import sys, csv, re

codes = [{"code":"Eu25z11","system":"readv2"},{"code":"Eu25z00","system":"readv2"},{"code":"Eu25212","system":"readv2"},{"code":"E11z.00","system":"readv2"},{"code":"E107100","system":"readv2"},{"code":"Eu25200","system":"readv2"},{"code":"E107400","system":"readv2"},{"code":"Eu25111","system":"readv2"},{"code":"Eu25.00","system":"readv2"},{"code":"Eu25y00","system":"readv2"},{"code":"E107300","system":"readv2"},{"code":"E107200","system":"readv2"},{"code":"Eu25100","system":"readv2"},{"code":"E11z000","system":"readv2"},{"code":"E107000","system":"readv2"},{"code":"E107500","system":"readv2"},{"code":"Eu25000","system":"readv2"},{"code":"E107.00","system":"readv2"},{"code":"Eu25011","system":"readv2"},{"code":"E107z00","system":"readv2"},{"code":"E11zz00","system":"readv2"}];
REQUIRED_CODES = 1;
with open(sys.argv[1], 'r') as file_in, open('schizophrenia-spectrum-potential-cases.csv', 'w', newline='') as file_out:
    csv_reader = csv.DictReader(file_in)
    csv_writer = csv.DictWriter(file_out, csv_reader.fieldnames + ["xschizoaffective-schizophrenia-spectrum---primary-identified"])
    csv_writer.writeheader();
    codes_identified = 0;
    for row in csv_reader:
        newRow = row.copy();
        for cell in row:
            # Iterate cell lists (e.g. codes)
            for item in re.findall(r'\(([^,]*)\,', row[cell]):
                if(item in list(map(lambda code: code['code'], codes))): codes_identified+=1;
                if(codes_identified>=REQUIRED_CODES):
                    newRow["xschizoaffective-schizophrenia-spectrum---primary-identified"] = "CASE";
                    break;
            if(codes_identified>=REQUIRED_CODES): break;
        if(codes_identified<REQUIRED_CODES):
            newRow["xschizoaffective-schizophrenia-spectrum---primary-identified"] = "UNK";
        codes_identified=0;
        csv_writer.writerow(newRow)
