(declare-fun c_ack!19 () (_ BitVec 64))
(assert (not (fp.lt ((_ to_fp 11 53) c_ack!19) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.gt ((_ to_fp 11 53) c_ack!19) ((_ to_fp 11 53) #x3ff0000000000000)))

(check-sat)
(exit)
