(declare-fun c_ack!17 () (_ BitVec 64))
(assert (not (fp.lt ((_ to_fp 11 53) c_ack!17) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.gt ((_ to_fp 11 53) c_ack!17) ((_ to_fp 11 53) #x40862e42fefa39ef)))

(check-sat)
(exit)
