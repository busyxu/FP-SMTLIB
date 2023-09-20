(declare-fun a_ack!624 () (_ BitVec 32))
(declare-fun b_ack!623 () (_ BitVec 32))
(assert (not (bvsle a_ack!624 #x00000000)))
(assert (not (bvslt b_ack!623 #x00000000)))
(assert (not (bvslt (bvsdiv a_ack!624 #x00000002) b_ack!623)))
(assert (not (= #x00000000 b_ack!623)))
(assert (not (= #x00000002 a_ack!624)))
(assert (not (bvslt a_ack!624 #x00000015)))
(assert (= #x00000001 b_ack!623))
(assert (not (bvslt #x00000032 a_ack!624)))
(assert (let ((a!1 (bvult (bvadd #x00000001
                         (bvsub (bvsdiv a_ack!624 #x00000002) b_ack!623))
                  #x00000001)))
  (not a!1)))
(assert (let ((a!1 (concat #x00000000
                   (bvadd #x00000001
                          (bvsub (bvsdiv a_ack!624 #x00000002) b_ack!623)))))
  (not (bvult a!1 #x0000000000000065))))

(check-sat)
(exit)
