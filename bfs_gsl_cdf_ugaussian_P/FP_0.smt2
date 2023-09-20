(declare-fun x_ack!0 () (_ BitVec 64))
(assert (not (fp.lt (fp.abs ((_ to_fp 11 53) x_ack!0))
            ((_ to_fp 11 53) #x3ca0000000000000))))

(check-sat)
(exit)
