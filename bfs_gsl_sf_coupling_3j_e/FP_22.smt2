(declare-fun a_ack!1472 () (_ BitVec 32))
(declare-fun b_ack!1467 () (_ BitVec 32))
(declare-fun c_ack!1468 () (_ BitVec 32))
(declare-fun d_ack!1469 () (_ BitVec 32))
(declare-fun e_ack!1470 () (_ BitVec 32))
(declare-fun f_ack!1471 () (_ BitVec 32))
(assert (not (bvslt a_ack!1472 #x00000000)))
(assert (not (bvslt b_ack!1467 #x00000000)))
(assert (not (bvslt c_ack!1468 #x00000000)))
(assert (not (bvslt b_ack!1467 #x00000000)))
(assert (not (bvslt (bvadd a_ack!1472 c_ack!1468) b_ack!1467)))
(assert (= #x00000000 (bvand (bvadd a_ack!1472 b_ack!1467 c_ack!1468) #x00000001)))
(assert (not (bvslt a_ack!1472 #x00000000)))
(assert (not (bvslt b_ack!1467 #x00000000)))
(assert (not (bvslt c_ack!1468 #x00000000)))
(assert (= #x00000000 (bvand (bvadd a_ack!1472 d_ack!1469) #x00000001)))
(assert (= #x00000000 (bvand (bvadd b_ack!1467 e_ack!1470) #x00000001)))
(assert (= #x00000000 (bvand (bvadd c_ack!1468 f_ack!1471) #x00000001)))
(assert (= #x00000000 (bvadd d_ack!1469 e_ack!1470 f_ack!1471)))
(assert (= #x00000000 d_ack!1469))
(assert (= #x00000000 e_ack!1470))
(assert (= #x00000000 f_ack!1471))
(assert (not (= #x00000002 (bvsrem (bvadd a_ack!1472 b_ack!1467 c_ack!1468) #x00000004))))
(assert (let ((a!1 (bvslt (bvsub (bvsdiv (bvadd b_ack!1467 e_ack!1470) #x00000002)
                         (bvsdiv (bvsub c_ack!1468 f_ack!1471) #x00000002))
                  #x00000000)))
  (not a!1)))
(assert (let ((a!1 (bvslt (bvsub (bvsdiv (bvsub a_ack!1472 d_ack!1469) #x00000002)
                         (bvsdiv (bvadd c_ack!1468 f_ack!1471) #x00000002))
                  (bvsub (bvsdiv (bvadd b_ack!1467 e_ack!1470) #x00000002)
                         (bvsdiv (bvsub c_ack!1468 f_ack!1471) #x00000002)))))
  (not a!1)))
(assert (let ((a!1 (bvslt (bvsdiv (bvsub (bvadd a_ack!1472 b_ack!1467) c_ack!1468)
                          #x00000002)
                  (bvsdiv (bvsub a_ack!1472 d_ack!1469) #x00000002))))
  (not a!1)))
(assert (not (bvslt (bvsdiv (bvsub a_ack!1472 d_ack!1469) #x00000002)
            (bvsdiv (bvadd b_ack!1467 e_ack!1470) #x00000002))))
(assert (let ((a!1 (bvult a_ack!1472
                  (bvsdiv (bvsub (bvadd a_ack!1472 b_ack!1467) c_ack!1468)
                          #x00000002))))
  (not a!1)))
(assert (let ((a!1 (= (bvsdiv (bvsub (bvadd a_ack!1472 b_ack!1467) c_ack!1468)
                      #x00000002)
              a_ack!1472)))
  (not a!1)))

(check-sat)
(exit)
