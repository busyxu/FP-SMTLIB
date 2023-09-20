(declare-fun c_ack!33 () (_ BitVec 64))
(declare-fun d_ack!34 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) c_ack!33) ((_ to_fp 11 53) #x0000000000000000)))
(assert (fp.geq (fp.abs ((_ to_fp 11 53) d_ack!34))
        ((_ to_fp 11 53) #x3ff0000000000000)))

(check-sat)
(exit)
