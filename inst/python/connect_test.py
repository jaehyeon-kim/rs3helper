import argparse

from s3helper import get_connection_response

parser = argparse.ArgumentParser(description='returns connection response')
parser.add_argument('--access_key_id', required=True, type=str, help='AWS access key id')
parser.add_argument('--secret_access_key', required=True, type=str, help='AWS secret access key')
parser.add_argument('--is_ordinary_calling_format', required=False, type=bool, help='Connected in ordinary calling format?')
parser.add_argument('--region', required=False, type=str, help='Region info')

args = parser.parse_args()

conn_res = get_connection_response(args.access_key_id, args.secret_access_key, args.is_ordinary_calling_format, args.region)

print(conn_res[0])
