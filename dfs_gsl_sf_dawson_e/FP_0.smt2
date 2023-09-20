(declare-fun a_ack!0 () (_ BitVec 64))
(assert (not (fp.lt (fp.abs ((_ to_fp 11 53) a_ack!0))
            ((_ to_fp 11 53) #x3e5399999999999a))))

(check-sat)
(exit)
