(declare-fun a_ack!21 () (_ BitVec 64))
(assert (not (fp.lt (fp.abs ((_ to_fp 11 53) a_ack!21))
            ((_ to_fp 11 53) #x3fe62e42fefa39ef))))

(check-sat)
(exit)
