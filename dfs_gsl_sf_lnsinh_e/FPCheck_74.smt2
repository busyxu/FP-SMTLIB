(declare-fun a_ack!124 () (_ BitVec 64))
(declare-fun CF_exp ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(declare-fun CF_log ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(declare-fun FPCHECK_FMUL_OVERFLOW ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(assert (not (fp.leq ((_ to_fp 11 53) a_ack!124) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt (fp.abs ((_ to_fp 11 53) a_ack!124))
            ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (fp.lt ((_ to_fp 11 53) a_ack!124) ((_ to_fp 11 53) #x403205966f2b4f12)))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (CF_exp (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #xc000000000000000)
                                   ((_ to_fp 11 53) a_ack!124))))))
(let ((a!2 (fp.add roundNearestTiesToEven
                   a!1
                   (CF_exp (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #xc000000000000000)
                                   ((_ to_fp 11 53) a_ack!124))))))
  (fp.eq a!2 ((_ to_fp 11 53) #x3ff0000000000000)))))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (CF_exp (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #xc000000000000000)
                                   ((_ to_fp 11 53) a_ack!124))))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 ((_ to_fp 11 53) #x3ff0000000000000)
                 a!1)
         (CF_exp (fp.mul roundNearestTiesToEven
                         ((_ to_fp 11 53) #xc000000000000000)
                         ((_ to_fp 11 53) a_ack!124))))))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (CF_exp (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #xc000000000000000)
                                   ((_ to_fp 11 53) a_ack!124))))))
(let ((a!2 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) a_ack!124)
                   (CF_log (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3fe0000000000000)
                                   a!1)))))
  (fp.eq (fp.sub roundNearestTiesToEven a!2 ((_ to_fp 11 53) a_ack!124))
         (CF_log (fp.mul roundNearestTiesToEven
                         ((_ to_fp 11 53) #x3fe0000000000000)
                         a!1))))))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (CF_exp (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #xc000000000000000)
                                   ((_ to_fp 11 53) a_ack!124))))))
(let ((a!2 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) a_ack!124)
                   (CF_log (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3fe0000000000000)
                                   a!1)))))
(let ((a!3 (fp.sub roundNearestTiesToEven
                   a!2
                   (CF_log (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3fe0000000000000)
                                   a!1)))))
  (fp.eq a!3 ((_ to_fp 11 53) a_ack!124))))))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (CF_exp (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #xc000000000000000)
                                   ((_ to_fp 11 53) a_ack!124))))))
(let ((a!2 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) a_ack!124)
                   (CF_log (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3fe0000000000000)
                                   a!1)))))
  (FPCHECK_FMUL_OVERFLOW #x3cc0000000000000 (fp.abs a!2)))))

(check-sat)
(exit)
