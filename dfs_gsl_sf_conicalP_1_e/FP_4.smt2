(declare-fun b_ack!80 () (_ BitVec 64))
(declare-fun a_ack!81 () (_ BitVec 64))
(assert (not (fp.leq ((_ to_fp 11 53) b_ack!80) ((_ to_fp 11 53) #xbff0000000000000))))
(assert (fp.eq ((_ to_fp 11 53) a_ack!81) ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!80) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!80) ((_ to_fp 11 53) #x3ff0000000000000))))

(check-sat)
(exit)
