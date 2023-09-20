(declare-fun x_ack!40 () (_ BitVec 64))
(declare-fun nu1_ack!38 () (_ BitVec 64))
(declare-fun CF_log ((_ BitVec 64)) (_ FloatingPoint 11 53))
(declare-fun FPCHECK_FMUL_ACCURACY ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(declare-fun CF_exp ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(declare-fun nu2_ack!39 () (_ BitVec 64))
(assert (not (fp.eq ((_ to_fp 11 53) x_ack!40) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) x_ack!40) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (let ((a!1 (not (fp.eq (fp.sub roundNearestTiesToEven
                               ((_ to_fp 11 53) #x8000000000000000)
                               (CF_log x_ack!40))
                       ((_ to_fp 11 53) #x0000000000000000)))))
  (not (and a!1
            (fp.eq ((_ to_fp 11 53) nu1_ack!38)
                   ((_ to_fp 11 53) #x0000000000000000))))))
(assert (let ((a!1 (CF_exp (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   (CF_log x_ack!40))
                           ((_ to_fp 11 53) nu1_ack!38)))))
  (FPCHECK_FMUL_ACCURACY nu2_ack!39 a!1)))

(check-sat)
(exit)
