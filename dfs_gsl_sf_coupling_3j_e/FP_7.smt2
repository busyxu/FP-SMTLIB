(declare-fun a_ack!1001 () (_ BitVec 32))
(declare-fun b_ack!996 () (_ BitVec 32))
(declare-fun c_ack!997 () (_ BitVec 32))
(declare-fun d_ack!998 () (_ BitVec 32))
(declare-fun e_ack!999 () (_ BitVec 32))
(declare-fun f_ack!1000 () (_ BitVec 32))
(assert (not (bvslt a_ack!1001 #x00000000)))
(assert (not (bvslt b_ack!996 #x00000000)))
(assert (not (bvslt c_ack!997 #x00000000)))
(assert (not (bvslt b_ack!996 #x00000000)))
(assert (not (bvslt (bvadd a_ack!1001 c_ack!997) b_ack!996)))
(assert (= #x00000000 (bvand (bvadd a_ack!1001 b_ack!996 c_ack!997) #x00000001)))
(assert (not (bvslt a_ack!1001 #x00000000)))
(assert (not (bvslt b_ack!996 #x00000000)))
(assert (not (bvslt c_ack!997 #x00000000)))
(assert (= #x00000000 (bvand (bvadd a_ack!1001 d_ack!998) #x00000001)))
(assert (= #x00000000 (bvand (bvadd b_ack!996 e_ack!999) #x00000001)))
(assert (= #x00000000 (bvand (bvadd c_ack!997 f_ack!1000) #x00000001)))
(assert (= #x00000000 (bvadd d_ack!998 e_ack!999 f_ack!1000)))
(assert (= #x00000000 d_ack!998))
(assert (= #x00000000 e_ack!999))
(assert (= #x00000000 f_ack!1000))
(assert (not (= #x00000002 (bvsrem (bvadd a_ack!1001 b_ack!996 c_ack!997) #x00000004))))
(assert (let ((a!1 (bvslt (bvsub (bvsdiv (bvadd b_ack!996 e_ack!999) #x00000002)
                         (bvsdiv (bvsub c_ack!997 f_ack!1000) #x00000002))
                  #x00000000)))
  (not a!1)))
(assert (let ((a!1 (bvslt (bvsub (bvsdiv (bvsub a_ack!1001 d_ack!998) #x00000002)
                         (bvsdiv (bvadd c_ack!997 f_ack!1000) #x00000002))
                  (bvsub (bvsdiv (bvadd b_ack!996 e_ack!999) #x00000002)
                         (bvsdiv (bvsub c_ack!997 f_ack!1000) #x00000002)))))
  (not a!1)))
(assert (let ((a!1 (bvslt (bvsdiv (bvsub (bvadd a_ack!1001 b_ack!996) c_ack!997)
                          #x00000002)
                  (bvsdiv (bvsub a_ack!1001 d_ack!998) #x00000002))))
  (not a!1)))
(assert (not (bvslt (bvsdiv (bvsub a_ack!1001 d_ack!998) #x00000002)
            (bvsdiv (bvadd b_ack!996 e_ack!999) #x00000002))))
(assert (let ((a!1 (bvult a_ack!1001
                  (bvsdiv (bvsub (bvadd a_ack!1001 b_ack!996) c_ack!997)
                          #x00000002))))
  (not a!1)))
(assert (= (bvsdiv (bvsub (bvadd a_ack!1001 b_ack!996) c_ack!997) #x00000002)
   a_ack!1001))
(assert (let ((a!1 (bvult b_ack!996
                  (bvsdiv (bvsub (bvadd a_ack!1001 b_ack!996) c_ack!997)
                          #x00000002))))
  (not a!1)))
(assert (= (bvsdiv (bvsub (bvadd a_ack!1001 b_ack!996) c_ack!997) #x00000002) b_ack!996))
(assert (let ((a!1 (bvadd #x00000001
                  (bvsdiv (bvadd (bvadd a_ack!1001 b_ack!996) c_ack!997)
                          #x00000002))))
(let ((a!2 (bvult a!1
                  (bvsdiv (bvsub (bvadd a_ack!1001 b_ack!996) c_ack!997)
                          #x00000002))))
  (not a!2))))
(assert (let ((a!1 (bvadd #x00000001
                  (bvsdiv (bvadd (bvadd a_ack!1001 b_ack!996) c_ack!997)
                          #x00000002))))
(let ((a!2 (= (bvsdiv (bvsub (bvadd a_ack!1001 b_ack!996) c_ack!997) #x00000002)
              a!1)))
  (not a!2))))
(assert (= #x00000000
   (bvsdiv (bvsub (bvadd a_ack!1001 b_ack!996) c_ack!997) #x00000002)))
(assert (not (bvult a_ack!1001 (bvsdiv (bvsub a_ack!1001 d_ack!998) #x00000002))))
(assert (= (bvsdiv (bvsub a_ack!1001 d_ack!998) #x00000002) a_ack!1001))
(assert (not (bvult b_ack!996 (bvsdiv (bvsub b_ack!996 e_ack!999) #x00000002))))
(assert (= (bvsdiv (bvsub b_ack!996 e_ack!999) #x00000002) b_ack!996))
(assert (not (bvult c_ack!997 (bvsdiv (bvadd c_ack!997 f_ack!1000) #x00000002))))
(assert (= (bvsdiv (bvadd c_ack!997 f_ack!1000) #x00000002) c_ack!997))
(assert (bvsle (bvsub (bvsdiv (bvsub a_ack!1001 d_ack!998) #x00000002)
              (bvsdiv (bvadd c_ack!997 f_ack!1000) #x00000002))
       (bvsdiv (bvadd b_ack!996 e_ack!999) #x00000002)))
(assert (let ((a!1 (bvult (bvsdiv (bvsub (bvadd a_ack!1001 b_ack!996) c_ack!997)
                          #x00000002)
                  (bvsub (bvsdiv (bvsub a_ack!1001 d_ack!998) #x00000002)
                         (bvsdiv (bvadd c_ack!997 f_ack!1000) #x00000002)))))
  (not a!1)))
(assert (= (bvsub (bvsdiv (bvsub a_ack!1001 d_ack!998) #x00000002)
          (bvsdiv (bvadd c_ack!997 f_ack!1000) #x00000002))
   (bvsdiv (bvsub (bvadd a_ack!1001 b_ack!996) c_ack!997) #x00000002)))
(assert (let ((a!1 (bvsub (bvsdiv (bvsub a_ack!1001 d_ack!998) #x00000002)
                  (bvsub (bvsdiv (bvsub a_ack!1001 d_ack!998) #x00000002)
                         (bvsdiv (bvadd c_ack!997 f_ack!1000) #x00000002)))))
(let ((a!2 (bvult (bvsdiv (bvadd (bvsub a_ack!1001 b_ack!996) c_ack!997)
                          #x00000002)
                  a!1)))
  (not a!2))))
(assert (let ((a!1 (bvsub (bvsdiv (bvsub a_ack!1001 d_ack!998) #x00000002)
                  (bvsub (bvsdiv (bvsub a_ack!1001 d_ack!998) #x00000002)
                         (bvsdiv (bvadd c_ack!997 f_ack!1000) #x00000002)))))
(let ((a!2 (= a!1
              (bvsdiv (bvadd (bvsub a_ack!1001 b_ack!996) c_ack!997) #x00000002))))
  (not a!2))))

(check-sat)
(exit)
