(declare-fun a_ack!405 () (_ BitVec 64))
(declare-fun CF_exp ((_ BitVec 64)) (_ FloatingPoint 11 53))
(declare-fun FPCHECK_FMUL_ACCURACY ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!405) ((_ to_fp 11 53) #xc086232bdd7abcd2))))
(assert (fp.lt ((_ to_fp 11 53) a_ack!405) ((_ to_fp 11 53) #xbff0000000000000)))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   (CF_exp a_ack!405))
                           ((_ to_fp 11 53) #x3fe0000000000000))
                   ((_ to_fp 11 53) #x3fe0000000000000))))
(let ((a!2 (fp.sub roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (CF_exp a_ack!405)
                           (fp.mul roundNearestTiesToEven
                                   (CF_exp a_ack!405)
                                   a!1))
                   (CF_exp a_ack!405))))
  (fp.eq a!2 (fp.mul roundNearestTiesToEven (CF_exp a_ack!405) a!1)))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   (CF_exp a_ack!405))
                           ((_ to_fp 11 53) #x3fe0000000000000))
                   ((_ to_fp 11 53) #x3fe0000000000000))))
(let ((a!2 (fp.sub roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (CF_exp a_ack!405)
                           (fp.mul roundNearestTiesToEven
                                   (CF_exp a_ack!405)
                                   a!1))
                   (fp.mul roundNearestTiesToEven (CF_exp a_ack!405) a!1))))
  (fp.eq a!2 (CF_exp a_ack!405)))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   (CF_exp a_ack!405))
                           ((_ to_fp 11 53) #x3fe0000000000000))
                   ((_ to_fp 11 53) #x3fe0000000000000))))
(let ((a!2 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven (CF_exp a_ack!405) a!1)
                   (fp.add roundNearestTiesToEven
                           (CF_exp a_ack!405)
                           (fp.mul roundNearestTiesToEven
                                   (CF_exp a_ack!405)
                                   a!1)))))
  (not (fp.lt (fp.abs a!2) ((_ to_fp 11 53) #x3cb0000000000000))))))
(assert (FPCHECK_FMUL_ACCURACY
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) #x8000000000000000)
          (CF_exp a_ack!405))
  #x3fe5555555555555))

(check-sat)
(exit)
