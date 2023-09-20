(declare-fun b_ack!20 () (_ BitVec 64))
(declare-fun a_ack!21 () (_ BitVec 32))
(assert (not (fp.leq ((_ to_fp 11 53) b_ack!20) ((_ to_fp 11 53) #xbfe0000000000000))))
(assert (not (bvslt a_ack!21 #x00000000)))
(assert (not (= #x00000000 a_ack!21)))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!20) ((_ to_fp 11 53) #x0000000000000000))))

(check-sat)
(exit)
