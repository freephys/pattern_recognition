"""
    This python program calculates the PCA from the input data.
"""
import argparse, sys
import numpy as np


def read_data():
   # parse command line options
   parser = argparse.ArgumentParser()
   parser.add_argument('filename', nargs='?')
   parser.add_argument('-inx', nargs=1)
   parser.add_argument('-ncomp', nargs=1)

   args = parser.parse_args()
   if args.filename:
     inf = open(args.filename)
   elif not sys.stdin.isatty():
     inf = sys.stdin
   else:
     parser.print_help()
     sys.exit(0)

   data = np.loadtxt(inf)
   print (data.shape)
   
   if args.filename:
     inf.close()

   return (data)

def normalize_data(data):
   feature_std  = np.std(data, axis=0)
   feature_mean = np.mean(data, axis=0)
   print(data.transpose() - feature_mean)

def main():
   data = read_data()
   normalize_data(data)

if __name__=="__main__":
    main()
