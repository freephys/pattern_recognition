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

   return (data[:,0:2])

def normalize_data(data):
   feature_std  = np.std(data, axis=0)
   feature_mean = np.mean(data, axis=0)
   for i in range(data.shape[0]):
      data[i,:] = (data[i,:] - feature_mean) / feature_std

   return (data)

def main():
   data = read_data()
   data = normalize_data(data)

   data_cov = np.cov(data.transpose())
   print(data_cov)

   egVal, egVec = np.linalg.eig(data_cov)
   print(egVal)
   print(egVec)

   max_val = np.argmax(egVal)
   print(max_val)

   projection_matrix = egVec[:,max_val]

   projected_data = np.dot(data, projection_matrix)

   print(projection_matrix)

if __name__=="__main__":
    main()
