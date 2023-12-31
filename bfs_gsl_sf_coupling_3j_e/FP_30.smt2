(declare-fun a_ack!1964 () (_ BitVec 32))
(declare-fun b_ack!1959 () (_ BitVec 32))
(declare-fun c_ack!1960 () (_ BitVec 32))
(declare-fun d_ack!1961 () (_ BitVec 32))
(declare-fun e_ack!1962 () (_ BitVec 32))
(declare-fun f_ack!1963 () (_ BitVec 32))
(assert (not (bvslt a_ack!1964 #x00000000)))
(assert (not (bvslt b_ack!1959 #x00000000)))
(assert (not (bvslt c_ack!1960 #x00000000)))
(assert (not (bvslt b_ack!1959 #x00000000)))
(assert (not (bvslt (bvadd a_ack!1964 c_ack!1960) b_ack!1959)))
(assert (= #x00000000 (bvand (bvadd a_ack!1964 b_ack!1959 c_ack!1960) #x00000001)))
(assert (not (bvslt a_ack!1964 #x00000000)))
(assert (not (bvslt b_ack!1959 #x00000000)))
(assert (not (bvslt c_ack!1960 #x00000000)))
(assert (= #x00000000 (bvand (bvadd a_ack!1964 d_ack!1961) #x00000001)))
(assert (= #x00000000 (bvand (bvadd b_ack!1959 e_ack!1962) #x00000001)))
(assert (= #x00000000 (bvand (bvadd c_ack!1960 f_ack!1963) #x00000001)))
(assert (= #x00000000 (bvadd d_ack!1961 e_ack!1962 f_ack!1963)))
(assert (= #x00000000 d_ack!1961))
(assert (= #x00000000 e_ack!1962))
(assert (= #x00000000 f_ack!1963))
(assert (not (= #x00000002 (bvsrem (bvadd a_ack!1964 b_ack!1959 c_ack!1960) #x00000004))))
(assert (let ((a!1 (bvslt (bvsub (bvsdiv (bvadd b_ack!1959 e_ack!1962) #x00000002)
                         (bvsdiv (bvsub c_ack!1960 f_ack!1963) #x00000002))
                  #x00000000)))
  (not a!1)))
(assert (let ((a!1 (bvslt (bvsub (bvsdiv (bvsub a_ack!1964 d_ack!1961) #x00000002)
                         (bvsdiv (bvadd c_ack!1960 f_ack!1963) #x00000002))
                  (bvsub (bvsdiv (bvadd b_ack!1959 e_ack!1962) #x00000002)
                         (bvsdiv (bvsub c_ack!1960 f_ack!1963) #x00000002)))))
  (not a!1)))
(assert (let ((a!1 (bvslt (bvsdiv (bvsub (bvadd a_ack!1964 b_ack!1959) c_ack!1960)
                          #x00000002)
                  (bvsdiv (bvsub a_ack!1964 d_ack!1961) #x00000002))))
  (not a!1)))
(assert (not (bvslt (bvsdiv (bvsub a_ack!1964 d_ack!1961) #x00000002)
            (bvsdiv (bvadd b_ack!1959 e_ack!1962) #x00000002))))
(assert (let ((a!1 (bvult a_ack!1964
                  (bvsdiv (bvsub (bvadd a_ack!1964 b_ack!1959) c_ack!1960)
                          #x00000002))))
  (not a!1)))
(assert (= (bvsdiv (bvsub (bvadd a_ack!1964 b_ack!1959) c_ack!1960) #x00000002)
   a_ack!1964))
(assert (let ((a!1 (bvult b_ack!1959
                  (bvsdiv (bvsub (bvadd a_ack!1964 b_ack!1959) c_ack!1960)
                          #x00000002))))
  (not a!1)))
(assert (= (bvsdiv (bvsub (bvadd a_ack!1964 b_ack!1959) c_ack!1960) #x00000002)
   b_ack!1959))
(assert (let ((a!1 (bvadd #x00000001
                  (bvsdiv (bvadd (bvadd a_ack!1964 b_ack!1959) c_ack!1960)
                          #x00000002))))
(let ((a!2 (bvult a!1
                  (bvsdiv (bvsub (bvadd a_ack!1964 b_ack!1959) c_ack!1960)
                          #x00000002))))
  (not a!2))))
(assert (let ((a!1 (bvadd #x00000001
                  (bvsdiv (bvadd (bvadd a_ack!1964 b_ack!1959) c_ack!1960)
                          #x00000002))))
(let ((a!2 (= (bvsdiv (bvsub (bvadd a_ack!1964 b_ack!1959) c_ack!1960)
                      #x00000002)
              a!1)))
  (not a!2))))
(assert (= #x00000000
   (bvsdiv (bvsub (bvadd a_ack!1964 b_ack!1959) c_ack!1960) #x00000002)))
(assert (not (bvult a_ack!1964 (bvsdiv (bvsub a_ack!1964 d_ack!1961) #x00000002))))
(assert (= (bvsdiv (bvsub a_ack!1964 d_ack!1961) #x00000002) a_ack!1964))
(assert (bvult b_ack!1959 (bvsdiv (bvsub b_ack!1959 e_ack!1962) #x00000002)))

(check-sat)
(exit)
