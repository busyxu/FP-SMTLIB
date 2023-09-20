(declare-fun a_ack!55 () (_ BitVec 32))
(declare-fun b_ack!54 () (_ BitVec 64))
(assert (not (bvslt a_ack!55 #x00000000)))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!54) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!54) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!54) ((_ to_fp 11 53) #x3f30000000000000))))

(check-sat)
(exit)
