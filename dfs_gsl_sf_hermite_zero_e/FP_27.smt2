(declare-fun a_ack!548 () (_ BitVec 32))
(declare-fun b_ack!547 () (_ BitVec 32))
(assert (not (bvsle a_ack!548 #x00000000)))
(assert (not (bvslt b_ack!547 #x00000000)))
(assert (not (bvslt (bvsdiv a_ack!548 #x00000002) b_ack!547)))
(assert (not (= #x00000000 b_ack!547)))
(assert (not (= #x00000002 a_ack!548)))
(assert (not (bvslt a_ack!548 #x00000015)))
(assert (= #x00000001 b_ack!547))
(assert (not (bvslt #x00000032 a_ack!548)))
(assert (let ((a!1 (bvult (bvadd #x00000001
                         (bvsub (bvsdiv a_ack!548 #x00000002) b_ack!547))
                  #x00000001)))
  (not a!1)))
(assert (let ((a!1 (concat #x00000000
                   (bvadd #x00000001
                          (bvsub (bvsdiv a_ack!548 #x00000002) b_ack!547)))))
  (bvult a!1 #x0000000000000065)))
(assert (let ((a!1 (concat #x00000000
                   (bvadd #x00000001
                          (bvsub (bvsdiv a_ack!548 #x00000002) b_ack!547)))))
  (bvult #x0000000000000000 (bvmul #x0000000000000008 a!1))))
(assert (let ((a!1 (concat #x00000000
                   (bvadd #x00000001
                          (bvsub (bvsdiv a_ack!548 #x00000002) b_ack!547)))))
  (bvult (bvmul #x0000000000000008 a!1) #x0000000000000321)))

(check-sat)
(exit)
