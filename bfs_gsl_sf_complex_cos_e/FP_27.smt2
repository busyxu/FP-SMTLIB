(declare-fun b_ack!256 () (_ BitVec 64))
(assert (not (fp.lt (fp.abs ((_ to_fp 11 53) b_ack!256))
            ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (fp.lt (fp.abs ((_ to_fp 11 53) b_ack!256))
       ((_ to_fp 11 53) #x40862e42fefa39ef)))

(check-sat)
(exit)
