local function prequire(...)
local status, lib = pcall(require, ...)
if (status) then return lib end
    return nil
end

local luasnip = prequire('luasnip')

local t = function(str)
    return vim.api.nvim_replace_termcodes(str, true, true, true)
end

local check_back_space = function()
    local col = vim.fn.col('.') - 1
    if col == 0 or vim.fn.getline('.'):sub(col, col):match('%s') then
        return true
    else
        return false
    end
end

_G.tab_complete = function()
    if vim.fn.pumvisible() == 1 then
        return t "<C-n>"
    elseif luasnip and luasnip.expand_or_jumpable() then
        return t "<Plug>luasnip-expand-or-jump"
    elseif check_back_space() then
        return t "<TAB>"
    else
        return t "<TAB>"
        -- return vim.fn['compe#complete']()
    end
end
-- _G.s_tab_complete = function()
--     if vim.fn.pumvisible() == 1 then
--         return t "<C-p>"
--     elseif luasnip and luasnip.jumpable(-1) then
--         return t "<Plug>luasnip-jump-prev"
--     else
--         return t "<S-TAB>"
--     end
-- end

-- KEY MAPPINGS
vim.api.nvim_set_keymap("i", "<TAB>", "v:lua.tab_complete()", {expr = true})
vim.api.nvim_set_keymap("s", "<TAB>", "v:lua.tab_complete()", {expr = true})
-- vim.api.nvim_set_keymap("i", "<S-TAB>", "v:lua.s_tab_complete()", {expr = true})
-- vim.api.nvim_set_keymap("s", "<S-TAB>", "v:lua.s_tab_complete()", {expr = true})
vim.api.nvim_set_keymap("i", "<C-E>", "<Plug>luasnip-next-choice", {})
vim.api.nvim_set_keymap("s", "<C-E>", "<Plug>luasnip-next-choice", {})

-- SNIPPETS
local ls = require "luasnip"

local s = ls.s
local t = ls.t
local i = ls.i
local f = ls.f

ls.snippets.all =
{
    s("trig", t "This text is SELECTed after expanding the snippet."),
    s("fio", t(
    {
        "ios_base::sync_with_stdio(0);",
        "cin.tie(0);cout.tie(0);"
    }
    )),
    s("file", t(
    {
        "freopen(\"ip.txt\",\"r\",stdin);",
        "freopen(\"op.txt\",\"w\",stdout);"
    }
    )),
    s("neet",
    {
        t(
        {
            "#include \"bits/stdc++.h\"",
            "using namespace std;",
            "",
            "#define int long long",
            "const int MOD = 1e9+7;",
            "const int INF = 0x3F3F3F3F3F3F3F3F;",
            "",
            "signed main()",
            "{",
            "\t",
        }
        ), i(0),
        t(
        {
            "",
            "}"
        }
    )}),
    s("hekk",
    {
        t(
        {
            "#include \"bits/stdc++.h\"",
            "// #include<ext/pb_ds/assoc_container.hpp>",
            "// #include<ext/pb_ds/tree_policy.hpp>",
            "// using namespace __gnu_pbds;",
            "using namespace std;",
            "#define ld           long double",
            "#define vi           vector<int>",
            "#define pii          pair<int,int>",
            "#define pb           push_back",
            "#define mp           make_pair",
            "#define ff           first",
            "#define ss           second",
            "#define endl         '\\n'",
            "#define rep(i,s,e)   for(int i=(s);i<=(e);i++)",
            "#define brep(i,s,e)  for(int i=(s);i>=(e);i--)",
            "#define _T           int T;cin>>T;rep(TT,1,T)",
            "#define all(x)       (x).begin(),(x).end()",
            "#define ball(x)      (x).rbegin(),(x).rend()",
            "#define sz(x)        (int)x.size()",
            "#define mem(x,y)     memset(x,(char)y,sizeof(x))",
            "#define milf(x)      x.reserve(1LL<<14LL); x.max_load_factor(0.25); // less_equal",
            "#define pbds         tree<int, null_type, less<int>, rb_tree_tag, tree_order_statistics_node_update>",
            "mt19937              rng(chrono::steady_clock::now().time_since_epoch().count());",
            "#define int          long long",
            "const int INF = 0x3F3F3F3F3F3F3F3F;",
            "const int MOD = 1e9+7;",
            "ld EPS = 1e-12;",
            "",
            "",
            "int _main()",
            "{",
            "\t// _T",
            "\t{",
            "\t\t",
        }
        ), i(0),
        t(
        {
            "",
            "\t}",
            "",
            "\treturn 0;",
            "}",
            "",
            "signed main()",
            "{",
            "\tios_base::sync_with_stdio(0);cin.tie(0);cout.tie(0);",
            "\t// freopen(\"ip.txt\",\"r\",stdin);",
            "\t// freopen(\"op.txt\",\"w\",stdout);",
            "",
            "\tint tt = 1000*clock()/CLOCKS_PER_SEC;",
            "",
            "\tcout<<fixed<<setprecision(15);_main();",
            "",
            "\tcerr<<1000*clock()/CLOCKS_PER_SEC-tt<<\"ms\\n\";",
            "}"
        }
    )}),
    s("bojack",
    {
        t(
        {
            "/*",
            "  \"Piece of shit. Stupid piece of shit. I'm a real stupid piece",
            "   of shit. But I know I'm a piece of shit. That at least makes",
            "   me better than all the pieces of shit that don't know they're",
            "   pieces of shit. Or is it worse?\"",
            "\t - BoJack F. Horseman",
            "*/",
            "#include \"bits/stdc++.h\"",
            "// #include<ext/pb_ds/assoc_container.hpp>",
            "// #include<ext/pb_ds/tree_policy.hpp>",
            "// using namespace __gnu_pbds;",
            "using namespace std;",
            "#define ld           long double",
            "#define vi           vector<int>",
            "#define pii          pair<int,int>",
            "#define pb           push_back",
            "#define mp           make_pair",
            "#define ff           first",
            "#define ss           second",
            "#define endl         '\\n'",
            "#define rep(i,s,e)   for(int i=(s);i<=(e);i++)",
            "#define brep(i,s,e)  for(int i=(s);i>=(e);i--)",
            "#define all(x)       (x).begin(),(x).end()",
            "#define ball(x)      (x).rbegin(),(x).rend()",
            "#define sz(x)        (int)x.size()",
            "#define mem(x,y)     memset(x,(char)y,sizeof(x))",
            "#define milf(x)      x.reserve(1LL<<14LL); x.max_load_factor(0.25); // less_equal",
            "#define pbds         tree<int, null_type, less<int>, rb_tree_tag, tree_order_statistics_node_update>",
            "mt19937              rng(chrono::steady_clock::now().time_since_epoch().count());",
            "#define int          long long",
            "const int INF = 0x3F3F3F3F3F3F3F3F;",
            "const int MOD = 1e9+7;",
            "ld EPS = 1e-12;",
            "",
            "",
            "short rain()",
            "{",
            "\t// ifstream fin(\"ip.txt\"); ofstream fout(\"op.txt\");",
            "\t// int T;cin>>T;rep(TT,1,T)",
            "\t{",
            "\t\t",
        }
        ), i(0),
        t(
        {
            "",
            "\t}",
            "",
            "\treturn 0;",
            "}",
            "",
            "signed main()",
            "{",
            "\t// when getting input using getline(cin,s)",
            "\t// after getting input from cin >> n, best to use",
            "\t// cin.ignore( 1, '\\n' );",
            "\t// Because problem occurs that getline ignores the first",
            "\t// input. This is due to getting the \"enter\" from cin",
            "\t// and hence getting nothing for first input. This",
            "\t// statement eats up the \"enter\" input to avoid the problemo.",
            "\tios_base::sync_with_stdio(0);cin.tie(0);cout.tie(0);",
            "\tint start = 1000*clock()/CLOCKS_PER_SEC;",
            "\tcout << fixed << setprecision(15);           rain();",
            "\tcerr << 1000*clock()/CLOCKS_PER_SEC-start << \"ms\\n\";",
            "\t// *( hsh.find_by_order(k) )               kth smallest, from 0",
            "\t// hsh.order_of_key(k)                     num of ele str less than k",
            "\t// change less to less_equal for multiset pbds",
            "\t// if we have a erase operation, use less with pair<int,int>",
            "\t// hsh.erase( hsh.lower_bound({x,0}) )     erases an instance of x",
            "\t// hsh.find_by_order(k)->first             element at index k",
            "\t// hsh.order_of_key( {x,0} )               first index of x",
            "\t// Create struct HASH; Use milf(x) for every hashmap; Use CRNG xor;",
            "}"
        }
    )}),
    s("dsu",
    {
        t(
        {
            "class DSU",
            "{",
            "\tprivate:",
            "\t\tint par[(int)(",
        }
        ), i(1, "1e5+5"),
        t(
        {
            ")]",
            "",
            "\tpublic:",
            "",
            "\t\tint parentOf(int x)",
            "\t\t{",
            "\t\t\tif( par[x]<0 )",
            "\t\t\t\treturn x;",
            "\t\t\treturn par[x] = parentOf( par[x] );",
            "\t\t}",
            "",
            "\t\tvoid unite(int x, int y)",
            "\t\t{",
            "\t\t\tint pX = parentOf(x);",
            "\t\t\tint pY = parentOf(y);",
            "\t\t\tif( pX==pY )",
            "\t\t\t\treturn;",
            "\t\t\tif( abs(par[pX]) < abs(par[pY]) )",
            "\t\t\t\tswap( pX, pY );",
            "\t\t\tpar[pX] += par[pY];",
            "\t\t\tpar[pY] = pX;",
            "\t\t}",
            "",
            "\t\tDSU()",
            "\t\t{",
            "\t\t\tmemset( par, -1, sizeof(par) );",
            "\t\t}",
            "}"
        }
    )}),
    s("modexp",
    {
        t(
        {
            "int modexp(int base, int exp)",
            "{",
            "\tint res = 1;",
            "\twhile( exp>0 )",
            "\t{",
            "\t\tif( exp&(int)1 ) res *= base, res %= MOD;",
            "\t\tbase *= base, base %= MOD, exp >>= (int)1;",
            "\t}",
            "\treturn res;",
            "}"
        }
    )}),
    s("modinv",
    {
        t(
        {
            "// Extended Euclidean Algorithm ax + by = gcd(a,b)",
            "// returns gcd and stores x and y",
            "int exgcd(int a, int b, int &x, int &y)",
            "{",
            "\tint g = a; x = 1, y = 0;",
            "\tif( b ) g = exgcd( b,a%b,y,x ), y -= (a/b)*x;",
            "\treturn g;",
            "}",
            "",
            "// Modular Multiplicative Inverse of a (mod m)",
            "int modinv(int a, int m)",
            "{",
            "\tint x, y;",
            "\texgcd( a,m,x,y );",
            "\treturn ( x+m )%m;",
            "}"
        }
    )}),
    s("pfac",
    {
        t(
        {
            "vector<int> pfac;",
            "void primefac(int n)",
            "{",
            "\tfor(int i=2; i*i<=n; i++)",
            "\t{",
            "\t\tif( n%i != 0 ) continue;",
            "\t\tpfac.push_back( i );",
            "\t\twhile( n%i==0 ) n/=i;",
            "\t}",
            "\tif( n>1 ) pfac.push_back( n );",
            "}"
        }
    )}),
    s("fac",
    {
        t(
        {
            "vector<int> fac;",
            "void factorize(int n)",
            "{",
            "\tfor(int i=1; i*i<=n; i++)",
            "\t{",
            "\t\tif( n%i != 0 ) continue;",
            "\t\tfac.push_back( i );",
            "\t\tif( i*i != n )",
            "\t\tfac.push_back( n/i );",
            "\t}",
            "}"
        }
    )}),
    s("milf",
    {
        t(
        {
            "struct HASH",
            "{",
            "\tstatic uint64_t splitmix64(uint64_t x)",
            "\t{",
            "\t\tx += UINT64_C(0x9e3779b97f4a7c15);",
            "\t\tx = (x ^ (x >> 30)) * UINT64_C(0xbf58476d1ce4e5b9);",
            "\t\tx = (x ^ (x >> 27)) * UINT64_C(0x94d049bb133111eb);",
            "\t\treturn x ^ (x >> 31);",
            "\t}",
            "\tsize_t operator()(uint64_t x) const",
            "\t{  return splitmix64( x+crng );  }",
            "};"
        }
    )}),
    s("kmp",
    {
        t(
        {
            "vector<int> stringMatch(string &s, string &pat)",
            "{",
            "\tstring t = pat + \"#\" + s;",
            "\tint n = t.length();",
            "\tint pi[n];",
            "\tpi[0] = 0;",
            "\tfor(int i=1; i<n; i++)",
            "\t{",
            "\t\tint j = pi[i-1];",
            "\t\twhile( j>0 && t[i]!=t[j] )",
            "\t\t\tj = pi[j-1];",
            "\t\tif( t[i]==t[j] )",
            "\t\t\tj++;",
            "\t\tpi[i] = j;",
            "\t}",
            "\tvector<int> occ;",
            "\tfor(int i=0; i<n; i++)",
            "\t{",
            "\t\tif( pi[i]==(int)(pat.length()) )",
            "\t\t\tocc.push_back( i - (int)(s.length()) - 1 );",
            "\t}",
            "\treturn occ;",
            "}"
        }
    )}),
    s("segment",
    {
        t(
        {
            "class segTree",
            "{",
            "\tprivate:",
            "\t\tint n;",
            "\t\tvector<int> tree;",
            "",
            "\t\tvoid make(int v, int l, int r, vector<int> &a)",
            "\t\t{",
            "\t\t\tif( l==r )",
            "\t\t\t{",
            "\t\t\t\ttree[v] = a[l];",
            "\t\t\t\treturn;",
            "\t\t\t}",
            "\t\t\tint m = (l+r)>>1;",
            "\t\t\tmake( 2*v, l, m, a );",
            "\t\t\tmake( 2*v+1, m+1, r, a );",
            "\t\t\ttree[v] = max( tree[2*v], tree[2*v+1] );",
            "\t\t}",
            "",
            "\t\tint query(int v, int l, int r, int ql, int qr)",
            "\t\t{",
            "\t\t\tif( ql>qr )",
            "\t\t\t\treturn INT_MIN;",
            "",
            "\t\t\tif( l==ql && r==qr )",
            "\t\t\t\treturn tree[v];",
            "",
            "\t\t\tint m = (l+r)>>1;",
            "\t\t\tint leftAns = query( 2*v, l, m, ql, min(m,qr) );",
            "\t\t\tint rightAns = query( 2*v+1, m+1, r, max(ql,m+1), qr );",
            "\t\t\treturn max( leftAns, rightAns );",
            "\t\t}",
            "",
            "\t\tvoid update(int v, int l, int r, int idx, int val)",
            "\t\t{",
            "\t\t\tif( l==r )",
            "\t\t\t{",
            "\t\t\t\ttree[v] = val;",
            "\t\t\t\treturn;",
            "\t\t\t}",
            "\t\t\tint m = (l+r)>>1;",
            "\t\t\tif( idx>m )",
            "\t\t\t\tupdate( 2*v+1, m+1, r, idx, val );",
            "\t\t\telse",
            "\t\t\t\tupdate( 2*v, l, m, idx, val );",
            "\t\t\ttree[v] = max( tree[2*v], tree[2*v+1] );",
            "\t\t}",
            "",
            "\tpublic:",
            "",
            "\t\tint queryRange(int l, int r)",
            "\t\t{",
            "\t\t\treturn query( 1, 0, n-1, l, r );",
            "\t\t}",
            "",
            "\t\tvoid updateIndex(int index, int value)",
            "\t\t{",
            "\t\t\tupdate( 1, 0, n-1, index, value );",
            "\t\t}",
            "",
            "\t\tsegTree(vector<int> &a)",
            "\t\t{",
            "\t\t\tthis->n = a.size();",
            "\t\t\tthis->tree.resize( 4*n );",
            "\t\t\tthis->make( 1, 0, n-1, a );",
            "\t\t}",
            "};"
        }
    )}),
    s("sieve",
    {
        t(
        {
            "const int PRIMES = ",
        }
        ), i(1, "1e7+6"),
        t(
        {
            ";",
            "",
            "vector<int> prime;",
            "vector<int> comp;",
            "bool isPrime[PRIMES];",
            "void sieve(int n = PRIMES)",
            "{",
            "\tmemset( isPrime, true, sizeof(isPrime) );",
            "\tisPrime[0] = isPrime[1] = false;",
            "\tfor(int j=4; j<n; j+=2)",
            "\t\tisPrime[j] = false;",
            "\tfor(int i=3; i*i<n; i+=2)",
            "\t{",
            "\t\tif( !isPrime[i] )",
            "\t\t\tcontinue;",
            "\t\tfor(int j=i*i; j<n; j+=i)",
            "\t\t\tisPrime[j] = false;",
            "\t}",
            "\t// for(int i=2; i<n; i++)",
            "\t//     isPrime[i] ? prime.push_back(i) : comp.push_back(i);",
            "}"
        }
    )}),
}
