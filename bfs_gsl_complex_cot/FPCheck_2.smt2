(declare-fun y_ack!10 () (_ BitVec 64))
(declare-fun FPCHECK_FINVALID_POW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(declare-fun CF_sinh ((_ BitVec 64)) (_ FloatingPoint 11 53))
(assert (not (fp.lt (fp.abs ((_ to_fp 11 53) y_ack!10))
            ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (FPCHECK_FINVALID_POW (CF_sinh y_ack!10) (CF_sinh y_ack!10)))

(check-sat)
(exit)
