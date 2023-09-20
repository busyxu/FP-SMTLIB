(declare-fun b_ack!50 () (_ BitVec 64))
(assert (fp.lt (fp.abs (fp.abs ((_ to_fp 11 53) b_ack!50)))
       ((_ to_fp 11 53) #x3e60000000000000)))
(assert (not (fp.gt (fp.abs ((_ to_fp 11 53) b_ack!50))
            ((_ to_fp 11 53) #x40862642fefa39ef))))

(check-sat)
(exit)
