(declare-fun a_ack!124 () (_ BitVec 64))
(declare-fun CF_exp ((_ BitVec 64)) (_ FloatingPoint 11 53))
(declare-fun FPCHECK_FMUL_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ BitVec 64))
             Bool)
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!124) ((_ to_fp 11 53) #xc086232bdd7abcd2))))
(assert (fp.lt ((_ to_fp 11 53) a_ack!124) ((_ to_fp 11 53) #xbff0000000000000)))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (CF_exp a_ack!124)
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   (CF_exp a_ack!124))
                           ((_ to_fp 11 53) #x3fe6a09e667f3bcd)))))
(let ((a!2 (fp.abs (fp.div roundNearestTiesToEven
                           a!1
                           (fp.add roundNearestTiesToEven
                                   (CF_exp a_ack!124)
                                   a!1)))))
  (fp.lt a!2 ((_ to_fp 11 53) #x3cb0000000000000)))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (CF_exp a_ack!124)
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   (CF_exp a_ack!124))
                           ((_ to_fp 11 53) #x3fe6a09e667f3bcd)))))
(let ((a!2 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   (fp.abs (fp.add roundNearestTiesToEven
                                   (CF_exp a_ack!124)
                                   a!1)))))
  (FPCHECK_FMUL_UNDERFLOW a!2 #x3cb0000000000000))))

(check-sat)
(exit)
