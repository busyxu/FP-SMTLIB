(declare-fun a_ack!368 () (_ BitVec 64))
(declare-fun b_ack!367 () (_ BitVec 64))
(declare-fun CF_log ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(declare-fun FPCHECK_FMUL_ACCURACY ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!368) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt (fp.abs ((_ to_fp 11 53) a_ack!368))
            (fp.abs ((_ to_fp 11 53) b_ack!367)))))
(assert (not (fp.gt (fp.abs ((_ to_fp 11 53) a_ack!368))
            (fp.abs ((_ to_fp 11 53) b_ack!367)))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.abs ((_ to_fp 11 53) b_ack!367))
                           (fp.abs ((_ to_fp 11 53) b_ack!367)))
                   (fp.div roundNearestTiesToEven
                           (fp.abs ((_ to_fp 11 53) b_ack!367))
                           (fp.abs ((_ to_fp 11 53) b_ack!367))))))
(let ((a!2 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3fe0000000000000)
                   (CF_log (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   a!1)))))
(let ((a!3 (fp.add roundNearestTiesToEven
                   (CF_log (fp.abs ((_ to_fp 11 53) b_ack!367)))
                   a!2)))
(let ((a!4 (fp.sub roundNearestTiesToEven
                   a!3
                   (CF_log (fp.abs ((_ to_fp 11 53) b_ack!367))))))
  (fp.eq a!4 a!2))))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.abs ((_ to_fp 11 53) b_ack!367))
                           (fp.abs ((_ to_fp 11 53) b_ack!367)))
                   (fp.div roundNearestTiesToEven
                           (fp.abs ((_ to_fp 11 53) b_ack!367))
                           (fp.abs ((_ to_fp 11 53) b_ack!367))))))
(let ((a!2 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3fe0000000000000)
                   (CF_log (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   a!1)))))
(let ((a!3 (fp.add roundNearestTiesToEven
                   (CF_log (fp.abs ((_ to_fp 11 53) b_ack!367)))
                   a!2)))
  (fp.eq (fp.sub roundNearestTiesToEven a!3 a!2)
         (CF_log (fp.abs ((_ to_fp 11 53) b_ack!367))))))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.abs ((_ to_fp 11 53) b_ack!367))
                           (fp.abs ((_ to_fp 11 53) b_ack!367)))
                   (fp.div roundNearestTiesToEven
                           (fp.abs ((_ to_fp 11 53) b_ack!367))
                           (fp.abs ((_ to_fp 11 53) b_ack!367))))))
(let ((a!2 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3fe0000000000000)
                   (CF_log (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   a!1)))))
(let ((a!3 (fp.add roundNearestTiesToEven
                   (CF_log (fp.abs ((_ to_fp 11 53) b_ack!367)))
                   a!2)))
  (FPCHECK_FMUL_ACCURACY #x3cb0000000000000 (fp.abs a!3))))))

(check-sat)
(exit)
