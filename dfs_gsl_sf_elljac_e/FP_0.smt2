(declare-fun b_ack!0 () (_ BitVec 64))
(assert (not (fp.gt (fp.abs ((_ to_fp 11 53) b_ack!0))
            ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt (fp.abs ((_ to_fp 11 53) b_ack!0))
            ((_ to_fp 11 53) #x3cc0000000000000))))

(check-sat)
(exit)
