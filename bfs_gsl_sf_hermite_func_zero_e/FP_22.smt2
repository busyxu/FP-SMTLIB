(declare-fun a_ack!462 () (_ BitVec 32))
(declare-fun b_ack!461 () (_ BitVec 32))
(assert (not (bvsle a_ack!462 #x00000000)))
(assert (not (bvslt b_ack!461 #x00000000)))
(assert (not (bvslt (bvsdiv a_ack!462 #x00000002) b_ack!461)))
(assert (not (= #x00000000 b_ack!461)))
(assert (not (= #x00000002 a_ack!462)))
(assert (not (bvslt a_ack!462 #x00000015)))
(assert (not (= #x00000001 b_ack!461)))
(assert (let ((a!1 (bvult (bvadd #x00000001
                         (bvsub (bvsdiv a_ack!462 #x00000002) b_ack!461))
                  #x00000001)))
  (not a!1)))
(assert (let ((a!1 (concat #x00000000
                   (bvadd #x00000001
                          (bvsub (bvsdiv a_ack!462 #x00000002) b_ack!461)))))
  (not (bvult a!1 #x0000000000000065))))

(check-sat)
(exit)
