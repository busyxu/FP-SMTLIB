(declare-fun a_ack!12 () (_ BitVec 64))
(assert (not (fp.lt (fp.abs ((_ to_fp 11 53) a_ack!12))
            ((_ to_fp 11 53) #x3e60000000000000))))
(assert (fp.leq (fp.abs ((_ to_fp 11 53) a_ack!12))
        ((_ to_fp 11 53) #x4010000000000000)))

(check-sat)
(exit)
