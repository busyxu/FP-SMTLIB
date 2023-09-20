(declare-fun y_ack!74 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ BitVec 64))
             Bool)
(declare-fun CF_sinh ((_ BitVec 64)) (_ FloatingPoint 11 53))
(declare-fun CF_cos ((_ BitVec 64)) (_ FloatingPoint 11 53))
(declare-fun x_ack!75 () (_ BitVec 64))
(assert (not (fp.eq ((_ to_fp 11 53) y_ack!74) ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) #x8000000000000000)
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   (CF_cos x_ack!75)
                                   (CF_sinh y_ack!74))
                           ((_ to_fp 11 53) #x7fc0000000000000)))))
  (FPCHECK_FMUL_UNDERFLOW a!1 #x7fc0000000000000)))

(check-sat)
(exit)
