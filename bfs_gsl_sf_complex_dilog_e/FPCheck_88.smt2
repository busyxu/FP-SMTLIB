(declare-fun CF_sin ((_ BitVec 64)) (_ FloatingPoint 11 53))
(declare-fun b_ack!386 () (_ BitVec 64))
(declare-fun a_ack!387 () (_ BitVec 64))
(declare-fun CF_cos ((_ BitVec 64)) (_ FloatingPoint 11 53))
(declare-fun CF_log ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(declare-fun FPCHECK_FMUL_UNDERFLOW
             ((_ BitVec 64) (_ FloatingPoint 11 53))
             Bool)
(assert (fp.eq (fp.mul roundNearestTiesToEven
               ((_ to_fp 11 53) a_ack!387)
               (CF_sin b_ack!386))
       ((_ to_fp 11 53) #x0000000000000000)))
(assert (fp.geq (fp.mul roundNearestTiesToEven
                ((_ to_fp 11 53) a_ack!387)
                (CF_cos b_ack!386))
        ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #xc00921fb54442d18)
                   (CF_log (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!387)
                                   (CF_cos b_ack!386))))))
  (fp.eq (fp.div roundNearestTiesToEven
                 a!1
                 ((_ to_fp 11 53) #xc00921fb54442d18))
         (CF_log (fp.mul roundNearestTiesToEven
                         ((_ to_fp 11 53) a_ack!387)
                         (CF_cos b_ack!386))))))
(assert (let ((a!1 (fp.abs (CF_log (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!387)
                                   (CF_cos b_ack!386))))))
  (not (fp.eq a!1 ((_ to_fp 11 53) #x0000000000000000)))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #xc00921fb54442d18)
                   (CF_log (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!387)
                                   (CF_cos b_ack!386))))))
(let ((a!2 (fp.div roundNearestTiesToEven
                   a!1
                   (CF_log (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!387)
                                   (CF_cos b_ack!386))))))
  (fp.eq a!2 ((_ to_fp 11 53) #xc00921fb54442d18)))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #xc00921fb54442d18)
                   (CF_log (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!387)
                                   (CF_cos b_ack!386))))))
  (FPCHECK_FMUL_UNDERFLOW #x3cc0000000000000 (fp.abs a!1))))

(check-sat)
(exit)
