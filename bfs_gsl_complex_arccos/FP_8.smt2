(declare-fun y_ack!111 () (_ BitVec 64))
(declare-fun CF_sinh ((_ BitVec 64)) (_ FloatingPoint 11 53))
(assert (fp.lt (fp.abs ((_ to_fp 11 53) y_ack!111))
       ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (not (fp.eq (CF_sinh y_ack!111) ((_ to_fp 11 53) #x0000000000000000))))

(check-sat)
(exit)
