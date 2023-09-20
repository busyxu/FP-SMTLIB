(declare-fun c_ack!20 () (_ BitVec 64))
(declare-fun a_ack!21 () (_ BitVec 64))
(assert (not (fp.lt ((_ to_fp 11 53) c_ack!20) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) c_ack!20) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (fp.lt ((_ to_fp 11 53) a_ack!21) ((_ to_fp 11 53) #x0000000000000000)))

(check-sat)
(exit)
