(declare-fun b_ack!2225 () (_ BitVec 64))
(declare-fun a_ack!2226 () (_ BitVec 32))
(assert (not (fp.leq ((_ to_fp 11 53) b_ack!2225) ((_ to_fp 11 53) #xbfe0000000000000))))
(assert (not (bvslt a_ack!2226 #x00000000)))
(assert (not (= #x00000000 a_ack!2226)))
(assert (not (= #x00000001 a_ack!2226)))
(assert (not (= #x00000002 a_ack!2226)))
(assert (not (= #x00000003 a_ack!2226)))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!2225) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!2225) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!2225) ((_ to_fp 11 53) #x0000000000000000))))
(assert (bvsle #x00000004 a_ack!2226))
(assert (bvsle #x00000005 a_ack!2226))

(check-sat)
(exit)
