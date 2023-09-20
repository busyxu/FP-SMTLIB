(declare-fun a_ack!17 () (_ BitVec 32))
(assert (bvslt a_ack!17 #x00000000))
(assert (not (= #x00000000 (bvand a_ack!17 #x00000001))))
(assert (bvslt #xffffff9d a_ack!17))
(assert (let ((a!1 (bvmul #x0000000000000008
                  ((_ sign_extend 32)
                    (bvsdiv (bvsub #xffffffff a_ack!17) #x00000002)))))
  (bvult a!1 #x0000000000000189)))

(check-sat)
(exit)
