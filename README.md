# sapling-riscv-ecosystem

1. benchmark-doc

    Contains all testing documentation for software components in the RISC-V ecosystem.

2. metadata

   Contains all original datasets used for analysis.

3. landscape-score.py

   Python implementation of the ecosystem maturity scoring rules.

4. run.sh

   Master script to run the full analysis pipeline.

5. output.xlsx

   Final output containing ecosystem maturity assessment.

6. Experimental procedure (execute ./run.sh):

   + Checking the ./metadata director,
   + Looping through each “-Landscape.” file in it,
   + Extracting the software name (e.g., CNTK from CNTK-Landscape.xlsx),
   + Executing landscape-score.py with the argument –name ./metadata /<software_name> for analysis,
   + Generating final results in output.xlsx.

