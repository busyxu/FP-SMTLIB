(declare-fun b_ack!654 () (_ BitVec 32))
(declare-fun a_ack!655 () (_ BitVec 32))
(assert (not (bvslt b_ack!654 #x00000000)))
(assert (not (bvslt a_ack!655 #x00000000)))
(assert (not (bvslt b_ack!654 a_ack!655)))
(assert (not (bvult b_ack!654 a_ack!655)))
(assert (= a_ack!655 b_ack!654))
(assert (not (bvult a_ack!655 #x00000012)))
(assert (bvule a_ack!655 #x000000aa))
(assert (bvult #x0000000000000000
       (bvadd #x0000000000000008
              (bvmul #x0000000000000018 (concat #x00000000 a_ack!655)))))
(assert (bvult (bvadd #x0000000000000008
              (bvmul #x0000000000000018 (concat #x00000000 a_ack!655)))
       #x0000000000001001))
(assert (bvslt a_ack!655 #x00000000))

(check-sat)
(exit)
