def redir(ali,fn,args)
  a=["double","long double","float"]
  b=["","l","f"]
  3.times{|i|
  puts "REDIR(#{ali},#{a[i]},#{fn+b[i]},(#{args.map{|e| "#{a[i]} #{e}"}*","}),(#{args*","}),\"libm.so\")"
  }
end
redir("asin","acos",["arg"])
redir("asin","asin",["arg"])
redir("asin","atan",["arg"])
redir("asin","atan2",["a1","a2"])

redir("sin","cos",["arg"])
redir("sin","sin",["arg"])
redir("sin","tan",["arg"])

puts "
REDIR(sin,double,sincos,(double a1,double *a2,double *a3),(a1,a2,a3),\"libm.so\")
REDIR(sin,long double,sincosl,(long double a1,long double *a2,long double *a3),(a1,a2,a3),\"libm.so\")
REDIR(sin,float,sincosf,(float a1,float *a2,float *a3),(a1,a2,a3),\"libm.so\")
"

redir("sinh","cosh",["arg"])
redir("sinh","sinh",["arg"])
redir("sinh","tanh",["arg"])



redir("pow","pow",["arg1","arg2"])
redir("pow","exp",["arg"])
redir("pow","exp2",["arg"])

redir("pow","exp10",["arg"])

redir("pow","log",["arg"])
redir("pow","log2",["arg"])

redir("pow","sqrt",["arg"])
redir("pow","cbrt",["arg"])

redir("bessel","j0",["arg"])
redir("bessel","j1",["arg"])
redir("bessel","y0",["arg"])
redir("bessel","y1",["arg"])

puts "
REDIR(bessel,double,jn,(int no,double a1),(no,a1),\"libm.so\")
REDIR(bessel,long double,jnl,(int no,long double a1),(no,a1),\"libm.so\")
REDIR(bessel,float,jnf,(int no,float a1),(no,a1),\"libm.so\")
REDIR(bessel,double,yn,(int no,double a1),(no,a1),\"libm.so\")
REDIR(bessel,long double,ynl,(int no,long double a1),(no,a1),\"libm.so\")
REDIR(bessel,float,ynf,(int no,float a1),(no,a1),\"libm.so\")
"


redir("erf","erf",["arg"])
redir("erf","erfc",["arg"])
redir("erf","lgamma",["arg"])
redir("erf","tgamma",["arg"])




