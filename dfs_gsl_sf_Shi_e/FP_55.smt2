(declare-fun a_ack!608 () (_ BitVec 64))
(assert (not (fp.lt (fp.abs ((_ to_fp 11 53) a_ack!608))
            ((_ to_fp 11 53) #x3e50000000000000))))
(assert (fp.leq (fp.abs ((_ to_fp 11 53) a_ack!608))
        ((_ to_fp 11 53) #x3fd8000000000000)))

(check-sat)
(exit)
