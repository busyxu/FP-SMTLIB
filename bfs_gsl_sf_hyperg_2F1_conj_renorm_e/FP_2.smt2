(declare-fun a_ack!49 () (_ BitVec 64))
(declare-fun c_ack!48 () (_ BitVec 64))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!49) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.lt ((_ to_fp 11 53) c_ack!48) ((_ to_fp 11 53) #x0000000000000000)))

(check-sat)
(exit)
