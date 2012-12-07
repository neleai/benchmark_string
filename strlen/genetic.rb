class Alg
	def initialize(ary)
		@ary=ary
	end
	def inspect
		"const int unroll=#{@ary[:unroll]},phase1=#{@ary[:phase1]},phase2=#{@ary[:phase2]},prefetch=#{@ary[:prefetch]},treshold=#{@ary[:treshold]};"
	end
	def <=>(a)
		0
	end
	attr_accessor :ary
end
$limit={:unroll=>[1,2,4],
     :phase1=>(1..4).to_a,
     :phase2=>(1..8).to_a,
   :prefetch=>[0,1,2,4,6,8],
	 :treshold=>[0,128,256,512,1024]
}
def random_alg
	h={}
	$limit.each{|k,v| h[k]=v[rand(v.size)]}
	Alg.new(h)
end
def cross(a,b)
	h={}
	a.ary.each{|k,v| 
		h[k]= (rand(2)==0) ? a.ary[k] : b.ary[k]
		h[k]=$limit[k][rand($limit[k].size)] if rand(100)==0
	}
	Alg.new(h)
end
pop=100
while true
[#00 10",#"random16 10 10","planted 10 10 dist1","planted 10 10 dist2","planted 10 10 dist3","planted 10 10 dist4",
"random 100 10","planted 100 10 dist1","planted 100 10 dist2","planted 100 10 dist3","planted 100 10 dist4",
"random 1000 10","planted 1000 10 dist1","planted 1000 10 dist2","planted 1000 10 dist3","planted 1000 10 dist4",
"random 10000 10","planted 10000 10 dist1","planted 10000 10 dist2","planted 10000 10 dist3","planted 10000 10 dist4",
"random 100000 10","planted 100000 10 dist1","planted 100000 10 dist2","planted 100000 10 dist3","planted 100000 10 dist4"
].each{|cmd|
	fname="report_#{cmd.gsub(" ","_")}"
if Dir[fname]!=[]
	frep=File.new(fname,"r")
			srt=[]
				pop.times{|j|
					s=frep.gets
						srt << [s.split[0].to_f,Alg.new(eval( "{:"+s.split[3].chop.gsub("=","=>").gsub(",",",:")+"}" ))]
				}
	puts srt.inspect
		cut=4*pop/5
		algs=srt.sort.map{|v,a| a}
	nalg=algs[0..cut]
		cut.upto(pop){
			nalg<<cross(nalg[rand(cut)],nalg[rand(cut)])	
		}
	algs=nalg
		else
			algs=[]
				pop.times{|i| algs << random_alg}
	end	
		puts "run"
#	puts algs.inspect
		datum=[]
		algs.each{|alg|
			fo=File.new("alg.c","w")
				fo.puts alg.inspect
				fo.puts "#include \"strstr_unroll_variable.h\""
				fo.close
			`gcc alg.c -mssse3 -O3 -fpic -shared -o tmp/libalg.so`
			`ln -s -f tmp/libalg.so libstrstr.so`
			`echo LD_LIBRARY_PATH=. ./#{cmd} | bash 2> err`
			print "."+ `cat err`
			STROUT.flush
			data=[]
			File.open("plot.dat"){|f|
				19.times{ 
				s=f.gets
data << s.split[1].to_f}
			}
		datum << data
	}
	puts datum.inspect
	# use competitive ratio as fitness function
	19.times{|i| 
		mi=[]
		pop.times{|j| mi << datum[j][i] }
		mi=mi.min
		pop.times{|j| datum[j][i]=datum[j][i]/mi }
	}
	puts datum.inspect
	srt=[]
	pop.times{|j| srt << [datum[j].max,algs[j]]}
	puts srt.inspect
	puts srt.sort.inspect
	frep=File.new(fname,"w")
	srt.sort.each{|v,a| frep.puts "#{v} #{a.inspect}"}
	frep.close
}
end
