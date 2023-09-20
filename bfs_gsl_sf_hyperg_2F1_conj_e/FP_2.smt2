(declare-fun c_ack!11 () (_ BitVec 64))
(declare-fun d_ack!12 () (_ BitVec 64))
(assert (not (fp.lt ((_ to_fp 11 53) c_ack!11) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.geq (fp.abs ((_ to_fp 11 53) d_ack!12))
        ((_ to_fp 11 53) #x3ff0000000000000)))

(check-sat)
(exit)
