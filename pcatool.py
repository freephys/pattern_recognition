"""
    This python program calculates the PCA from the input data.
"""
import argparse, sys
import numpy as np





def main():
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

   for line in inf:
     data = line.strip().split(' ')
     print len(data)
   if args.filename:
     inf.close()


if __name__=="__main__":
    main()
