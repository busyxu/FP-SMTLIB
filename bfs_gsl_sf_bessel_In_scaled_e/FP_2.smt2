(declare-fun b_ack!17 () (_ BitVec 64))
(assert (not (fp.lt (fp.abs ((_ to_fp 11 53) b_ack!17))
            ((_ to_fp 11 53) #x3e60000000000000))))

(check-sat)
(exit)
