SET env_curr_pid;
!set headerInterval 10000
SET hive.exec.stagingdir=/user/cloudera/tmp/staging;
SET hive.exec.compress.intermediate=true;
SET hive.exec.compress.output=true;
SET avro.output.codec=snappy;
SET hive.exec.parallel=true;
SET hive.auto.convert.join=true;
SET parquet.compression=snappy;
SET hive.query.result.fileformat=SequenceFile;
SET mapreduce.map.memory.mb=20480;
SET mapreduce.reduce.memory.mb=12288;
SET mapreduce.map.java.opts=-Duser.timezone=UTC -Xmx18g;
SET mapreduce.reduce.java.opts=-Duser.timezone=UTC -Xmx10g;
SET io.sort.mb=800;
SET hive.optimize.skewjoin=true;