(declare-fun y_ack!19 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_OVERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(declare-fun CF_sinh ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(declare-fun CF_sin ((_ BitVec 64)) (_ FloatingPoint 11 53))
(declare-fun x_ack!20 () (_ BitVec 64))
(assert (not (fp.eq ((_ to_fp 11 53) y_ack!19) ((_ to_fp 11 53) #x0000000000000000))))
(assert (FPCHECK_FMUL_OVERFLOW
  (CF_sin x_ack!20)
  (CF_sinh (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) #x8000000000000000)
                   ((_ to_fp 11 53) y_ack!19)))))

(check-sat)
(exit)
