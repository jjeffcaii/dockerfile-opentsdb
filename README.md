# Dockerfile For OpenTSDB

### Table Create

``` shell
create 'tsdb',
{NAME=>'t',VERSIONS=>1,COMPRESSION=>'LZ4',BLOOMFILTER=>'ROW',TTL=>2592000},
{SPLITS=>['\x01','\x02','\x03','\x04','\x05','\x06','\x07','\x08','\x09','\x0A','\x0B','\x0C','\x0D','\x0E','\x0F','\x10','\x11','\x12','\x13','\x14','\x15','\x16','\x17','\x18','\x19','\x1A','\x1B','\x1C','\x1D','\x1E','\x1F']}
```
