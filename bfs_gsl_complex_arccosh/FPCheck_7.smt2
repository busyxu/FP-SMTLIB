(declare-fun y_ack!22 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ BitVec 64))
             Bool)
(declare-fun x_ack!23 () (_ BitVec 64))
(assert (not (fp.eq ((_ to_fp 11 53) y_ack!22) ((_ to_fp 11 53) #x0000000000000000))))
(assert (FPCHECK_FSUB_UNDERFLOW (fp.abs ((_ to_fp 11 53) x_ack!23)) #x3ff0000000000000))

(check-sat)
(exit)
