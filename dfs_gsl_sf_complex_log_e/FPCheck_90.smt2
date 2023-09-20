(declare-fun a_ack!226 () (_ BitVec 64))
(declare-fun b_ack!225 () (_ BitVec 64))
(declare-fun CF_log ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(declare-fun FPCHECK_FMUL_OVERFLOW ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!226) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt (fp.abs ((_ to_fp 11 53) a_ack!226))
            (fp.abs ((_ to_fp 11 53) b_ack!225)))))
(assert (not (fp.gt (fp.abs ((_ to_fp 11 53) a_ack!226))
            (fp.abs ((_ to_fp 11 53) b_ack!225)))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.abs ((_ to_fp 11 53) b_ack!225))
                           (fp.abs ((_ to_fp 11 53) b_ack!225)))
                   (fp.div roundNearestTiesToEven
                           (fp.abs ((_ to_fp 11 53) b_ack!225))
                           (fp.abs ((_ to_fp 11 53) b_ack!225))))))
(let ((a!2 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3fe0000000000000)
                   (CF_log (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   a!1)))))
(let ((a!3 (fp.add roundNearestTiesToEven
                   (CF_log (fp.abs ((_ to_fp 11 53) b_ack!225)))
                   a!2)))
(let ((a!4 (fp.sub roundNearestTiesToEven
                   a!3
                   (CF_log (fp.abs ((_ to_fp 11 53) b_ack!225))))))
  (fp.eq a!4 a!2))))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.abs ((_ to_fp 11 53) b_ack!225))
                           (fp.abs ((_ to_fp 11 53) b_ack!225)))
                   (fp.div roundNearestTiesToEven
                           (fp.abs ((_ to_fp 11 53) b_ack!225))
                           (fp.abs ((_ to_fp 11 53) b_ack!225))))))
(let ((a!2 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3fe0000000000000)
                   (CF_log (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   a!1)))))
(let ((a!3 (fp.add roundNearestTiesToEven
                   (CF_log (fp.abs ((_ to_fp 11 53) b_ack!225)))
                   a!2)))
  (fp.eq (fp.sub roundNearestTiesToEven a!3 a!2)
         (CF_log (fp.abs ((_ to_fp 11 53) b_ack!225))))))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.abs ((_ to_fp 11 53) b_ack!225))
                           (fp.abs ((_ to_fp 11 53) b_ack!225)))
                   (fp.div roundNearestTiesToEven
                           (fp.abs ((_ to_fp 11 53) b_ack!225))
                           (fp.abs ((_ to_fp 11 53) b_ack!225))))))
(let ((a!2 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3fe0000000000000)
                   (CF_log (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   a!1)))))
(let ((a!3 (fp.add roundNearestTiesToEven
                   (CF_log (fp.abs ((_ to_fp 11 53) b_ack!225)))
                   a!2)))
  (FPCHECK_FMUL_OVERFLOW #x3cc0000000000000 (fp.abs a!3))))))

(check-sat)
(exit)
