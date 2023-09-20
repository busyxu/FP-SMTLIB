(declare-fun x_ack!26 () (_ BitVec 64))
(declare-fun nu1_ack!24 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_UNDERFLOW
             ((_ BitVec 64) (_ FloatingPoint 11 53))
             Bool)
(declare-fun CF_exp ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(declare-fun nu2_ack!25 () (_ BitVec 64))
(assert (not (fp.eq ((_ to_fp 11 53) x_ack!26) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) x_ack!26) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) nu1_ack!24) ((_ to_fp 11 53) #x0000000000000000))))
(assert (FPCHECK_FMUL_UNDERFLOW
  nu2_ack!25
  (CF_exp (fp.div roundNearestTiesToEven
                  ((_ to_fp 11 53) #x0020000000000000)
                  ((_ to_fp 11 53) nu1_ack!24)))))

(check-sat)
(exit)
