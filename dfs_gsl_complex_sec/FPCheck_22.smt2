(declare-fun y_ack!76 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ BitVec 64))
             Bool)
(declare-fun CF_sinh ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(declare-fun CF_sin ((_ BitVec 64)) (_ FloatingPoint 11 53))
(declare-fun x_ack!77 () (_ BitVec 64))
(assert (not (fp.eq ((_ to_fp 11 53) y_ack!76) ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (CF_sin x_ack!77)
                   (CF_sinh (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    ((_ to_fp 11 53) y_ack!76))))))
  (FPCHECK_FMUL_UNDERFLOW a!1 #x3ff0000000000000)))

(check-sat)
(exit)
