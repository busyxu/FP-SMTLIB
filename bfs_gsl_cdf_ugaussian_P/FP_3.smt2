(declare-fun x_ack!17 () (_ BitVec 64))
(assert (not (fp.lt (fp.abs ((_ to_fp 11 53) x_ack!17))
            ((_ to_fp 11 53) #x3ca0000000000000))))
(assert (fp.lt (fp.abs ((_ to_fp 11 53) x_ack!17)) ((_ to_fp 11 53) #x3fe5368f08461f9f)))

(check-sat)
(exit)
