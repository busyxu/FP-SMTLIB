(declare-fun a_ack!68 () (_ BitVec 32))
(declare-fun b_ack!67 () (_ BitVec 32))
(assert (not (bvsle a_ack!68 #x00000000)))
(assert (not (bvslt b_ack!67 #x00000000)))
(assert (not (bvslt (bvsdiv a_ack!68 #x00000002) b_ack!67)))
(assert (not (= #x00000000 b_ack!67)))
(assert (not (= #x00000002 a_ack!68)))
(assert (not (bvslt a_ack!68 #x00000015)))
(assert (= #x00000001 b_ack!67))
(assert (bvslt #x00000032 a_ack!68))
(assert (= #x00000000 (bvand a_ack!68 #x00000001)))

(check-sat)
(exit)
