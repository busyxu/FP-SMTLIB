(declare-fun b_ack!111 () (_ BitVec 64))
(assert (fp.lt (fp.abs ((_ to_fp 11 53) b_ack!111))
       ((_ to_fp 11 53) #x3ff0000000000000)))

(check-sat)
(exit)
