(declare-fun a_ack!2513 () (_ BitVec 32))
(declare-fun b_ack!2508 () (_ BitVec 32))
(declare-fun c_ack!2509 () (_ BitVec 32))
(declare-fun d_ack!2510 () (_ BitVec 32))
(declare-fun e_ack!2511 () (_ BitVec 32))
(declare-fun f_ack!2512 () (_ BitVec 32))
(assert (not (bvslt a_ack!2513 #x00000000)))
(assert (not (bvslt b_ack!2508 #x00000000)))
(assert (not (bvslt c_ack!2509 #x00000000)))
(assert (not (bvslt b_ack!2508 #x00000000)))
(assert (not (bvslt (bvadd a_ack!2513 c_ack!2509) b_ack!2508)))
(assert (= #x00000000 (bvand (bvadd a_ack!2513 b_ack!2508 c_ack!2509) #x00000001)))
(assert (not (bvslt a_ack!2513 #x00000000)))
(assert (not (bvslt b_ack!2508 #x00000000)))
(assert (not (bvslt c_ack!2509 #x00000000)))
(assert (= #x00000000 (bvand (bvadd a_ack!2513 d_ack!2510) #x00000001)))
(assert (= #x00000000 (bvand (bvadd b_ack!2508 e_ack!2511) #x00000001)))
(assert (= #x00000000 (bvand (bvadd c_ack!2509 f_ack!2512) #x00000001)))
(assert (= #x00000000 (bvadd d_ack!2510 e_ack!2511 f_ack!2512)))
(assert (= #x00000000 d_ack!2510))
(assert (= #x00000000 e_ack!2511))
(assert (= #x00000000 f_ack!2512))
(assert (not (= #x00000002 (bvsrem (bvadd a_ack!2513 b_ack!2508 c_ack!2509) #x00000004))))
(assert (let ((a!1 (bvslt (bvsub (bvsdiv (bvadd b_ack!2508 e_ack!2511) #x00000002)
                         (bvsdiv (bvsub c_ack!2509 f_ack!2512) #x00000002))
                  #x00000000)))
  (not a!1)))
(assert (let ((a!1 (bvslt (bvsub (bvsdiv (bvsub a_ack!2513 d_ack!2510) #x00000002)
                         (bvsdiv (bvadd c_ack!2509 f_ack!2512) #x00000002))
                  (bvsub (bvsdiv (bvadd b_ack!2508 e_ack!2511) #x00000002)
                         (bvsdiv (bvsub c_ack!2509 f_ack!2512) #x00000002)))))
  (not a!1)))
(assert (let ((a!1 (bvslt (bvsdiv (bvsub (bvadd a_ack!2513 b_ack!2508) c_ack!2509)
                          #x00000002)
                  (bvsdiv (bvsub a_ack!2513 d_ack!2510) #x00000002))))
  (not a!1)))
(assert (not (bvslt (bvsdiv (bvsub a_ack!2513 d_ack!2510) #x00000002)
            (bvsdiv (bvadd b_ack!2508 e_ack!2511) #x00000002))))
(assert (let ((a!1 (bvult a_ack!2513
                  (bvsdiv (bvsub (bvadd a_ack!2513 b_ack!2508) c_ack!2509)
                          #x00000002))))
  (not a!1)))
(assert (let ((a!1 (= (bvsdiv (bvsub (bvadd a_ack!2513 b_ack!2508) c_ack!2509)
                      #x00000002)
              a_ack!2513)))
  (not a!1)))
(assert (let ((a!1 (= #x00000000
              (bvsdiv (bvsub (bvadd a_ack!2513 b_ack!2508) c_ack!2509)
                      #x00000002))))
  (not a!1)))
(assert (let ((a!1 (bvmul #x00000002
                  (bvsdiv (bvsub (bvadd a_ack!2513 b_ack!2508) c_ack!2509)
                          #x00000002))))
  (bvult a_ack!2513 a!1)))
(assert (bvule a_ack!2513 #x000000aa))

(check-sat)
(exit)
