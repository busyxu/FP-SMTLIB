(declare-fun b_ack!656 () (_ BitVec 32))
(declare-fun a_ack!657 () (_ BitVec 32))
(assert (not (bvslt b_ack!656 #x00000000)))
(assert (not (bvslt a_ack!657 #x00000000)))
(assert (not (bvslt b_ack!656 a_ack!657)))
(assert (not (bvult b_ack!656 a_ack!657)))
(assert (= a_ack!657 b_ack!656))
(assert (not (bvult a_ack!657 #x00000012)))
(assert (bvule a_ack!657 #x000000aa))
(assert (bvult #x0000000000000000
       (bvadd #x0000000000000008
              (bvmul #x0000000000000018 (concat #x00000000 a_ack!657)))))
(assert (bvult (bvadd #x0000000000000008
              (bvmul #x0000000000000018 (concat #x00000000 a_ack!657)))
       #x0000000000001001))
(assert (not (bvslt a_ack!657 #x00000000)))
(assert (not (= #x00000000 (bvand a_ack!657 #x00000001))))

(check-sat)
(exit)
