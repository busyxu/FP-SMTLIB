(declare-fun b_ack!428 () (_ BitVec 64))
(declare-fun a_ack!429 () (_ BitVec 32))
(assert (not (fp.leq ((_ to_fp 11 53) b_ack!428) ((_ to_fp 11 53) #xbfe0000000000000))))
(assert (not (bvslt a_ack!429 #x00000000)))
(assert (not (= #x00000000 a_ack!429)))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!428) ((_ to_fp 11 53) #x0000000000000000))))
(assert (bvsle #x00000002 a_ack!429))
(assert (bvsle #x00000003 a_ack!429))
(assert (bvsle #x00000004 a_ack!429))

(check-sat)
(exit)
