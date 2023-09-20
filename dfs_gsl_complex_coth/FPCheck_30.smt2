(declare-fun x_ack!123 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_ACCURACY
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(declare-fun CF_sinh ((_ BitVec 64)) (_ FloatingPoint 11 53))
(declare-fun CF_cos ((_ BitVec 64)) (_ FloatingPoint 11 53))
(declare-fun y_ack!122 () (_ BitVec 64))
(assert (not (fp.lt (fp.abs ((_ to_fp 11 53) x_ack!123))
            ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (FPCHECK_FDIV_ACCURACY (CF_cos y_ack!122) (CF_sinh x_ack!123)))

(check-sat)
(exit)
