(declare-fun b_ack!645 () (_ BitVec 64))
(declare-fun a_ack!646 () (_ BitVec 32))
(assert (not (fp.leq ((_ to_fp 11 53) b_ack!645) ((_ to_fp 11 53) #xbfe0000000000000))))
(assert (not (bvslt a_ack!646 #x00000000)))
(assert (not (= #x00000000 a_ack!646)))
(assert (fp.eq ((_ to_fp 11 53) b_ack!645) ((_ to_fp 11 53) #x0000000000000000)))
(assert (bvsle #x00000002 a_ack!646))
(assert (bvsle #x00000003 a_ack!646))
(assert (bvsle #x00000004 a_ack!646))
(assert (bvsle #x00000005 a_ack!646))

(check-sat)
(exit)
