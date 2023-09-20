(declare-fun a_ack!16 () (_ BitVec 64))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!16) ((_ to_fp 11 53) #x4039000000000000))))

(check-sat)
(exit)
