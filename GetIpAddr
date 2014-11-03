// 获取ip地址，主要是一般外部请求经过nginx 会更换为ng 服务器地址
private String getIpAddr(HttpServletRequest request) {
        String ip = request.getHeader("x-forwarded-for");
        if(ipNotExists(ip)) {
            ip = request.getHeader("Proxy-Client-IP");
        }
        if(ipNotExists(ip)) {
            ip = request.getHeader("WL-Proxy-Client-IP");
        }
        if(ipNotExists(ip)) {
            ip = request.getRemoteAddr();
        }
        return ip;
    }
