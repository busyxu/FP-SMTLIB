(declare-fun a_ack!16 () (_ BitVec 64))
(assert (fp.lt (fp.abs ((_ to_fp 11 53) a_ack!16)) ((_ to_fp 11 53) #x3fe62e42fefa39ef)))

(check-sat)
(exit)
