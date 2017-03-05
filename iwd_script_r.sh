# This is the script should be run from the terminal.
# Instructions: TO RUN THE IWD ALGORITHM : Open the terminal, go to the directory that this file is in. Type in 'sh iwd_script.sh'.
# Instructions: TO GIVE THE PARAMETERS FOR THE ALGORITHM : Format below:
# python iwd_algorithm.py dataset_filename infogain_filename final_no_of_features nIWD nIter r1 r2 (--linear | --exponential | --fps) selection_pressure(between 1.0 and 2.0 for --linear, greater than 0.0 and less than 1.0 for --exponential, any value for --fps) svm_kernel svm_C svm_gamma svm_cv_folds a_v b_v c_v alpha a_s b_s c_s theta rho_s rho_IWD epsilon_s weight_infogain initialVelocity

# EXAMPLE BELOW:
# python iwd_algorithm.py datasets/wine.csv datasets/wine.csv.infogain 5 10 100 0.3 0.7 --linear 1.5 rbf 100 0.1 10 1.0 0.01 1 1 1.0 0.01 1 2 0.9 0.9 0.001 3 100

# ANOTHER EXAMPLE: (where we use fps for node selection, and therefore selection_pressure is not used, even then put some value in its position, do not leave it blank
# python iwd_algorithm.py datasets/wine.csv datasets/wine.csv.infogain 5 10 100 0.3 0.7 --fps 1.5 rbf 100 0.1 10 1.0 0.01 1 1 1.0 0.01 1 2 0.9 0.9 0.001 3 100

# If you want the output to be written to be APPENDED to an existing file, append '>> FILENAME' at the end of the line, if you want it to overwrite any existing content (if the file already exists), append '> FILENAME'. If you want the output to be written to a file AS WELL AS DISPLAYED ON SCREEN, append ' | tee FILENAME' at the end of the line.
# EXAMPLE: python iwd_algorithm.py datasets/wine.csv datasets/wine.csv.infogain 5 10 100 0.3 0.7 --fps 1.5 rbf 100 0.1 10 1.0 0.01 1 1 1.0 0.01 1 2 0.9 0.9 0.001 3 100 > wine.output


python iwd_algorithm_svr.py datasetsfeb2015/bodyfat.csv datasets/wine.csv.infogain 5 10 10 0 0.7 --linear 1.5 linear 1 0.0 10 1.0 0.01 1 1 1.0 0.01 1 2 0.9 0.9 0.001 0 100 #| tee datasets/outputs/leu.output

