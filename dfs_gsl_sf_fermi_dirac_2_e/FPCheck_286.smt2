(declare-fun a_ack!381 () (_ BitVec 64))
(declare-fun CF_exp ((_ BitVec 64)) (_ FloatingPoint 11 53))
(declare-fun FPCHECK_FDIV_ACCURACY
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!381) ((_ to_fp 11 53) #xc086232bdd7abcd2))))
(assert (fp.lt ((_ to_fp 11 53) a_ack!381) ((_ to_fp 11 53) #xbff0000000000000)))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   (CF_exp a_ack!381))
                           ((_ to_fp 11 53) #x3fe0000000000000))
                   ((_ to_fp 11 53) #x3fe0000000000000))))
(let ((a!2 (fp.add roundNearestTiesToEven
                   (CF_exp a_ack!381)
                   (fp.mul roundNearestTiesToEven
                           (CF_exp a_ack!381)
                           (fp.mul roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #x3fe0000000000000))))))
  (fp.eq (fp.sub roundNearestTiesToEven a!2 (CF_exp a_ack!381))
         (fp.mul roundNearestTiesToEven
                 (CF_exp a_ack!381)
                 (fp.mul roundNearestTiesToEven
                         a!1
                         ((_ to_fp 11 53) #x3fe0000000000000)))))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   (CF_exp a_ack!381))
                           ((_ to_fp 11 53) #x3fe0000000000000))
                   ((_ to_fp 11 53) #x3fe0000000000000))))
(let ((a!2 (fp.add roundNearestTiesToEven
                   (CF_exp a_ack!381)
                   (fp.mul roundNearestTiesToEven
                           (CF_exp a_ack!381)
                           (fp.mul roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #x3fe0000000000000))))))
(let ((a!3 (fp.sub roundNearestTiesToEven
                   a!2
                   (fp.mul roundNearestTiesToEven
                           (CF_exp a_ack!381)
                           (fp.mul roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #x3fe0000000000000))))))
  (fp.eq a!3 (CF_exp a_ack!381))))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   (CF_exp a_ack!381))
                           ((_ to_fp 11 53) #x3fe0000000000000))
                   ((_ to_fp 11 53) #x3fe0000000000000))))
(let ((a!2 (fp.add roundNearestTiesToEven
                   (CF_exp a_ack!381)
                   (fp.mul roundNearestTiesToEven
                           (CF_exp a_ack!381)
                           (fp.mul roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #x3fe0000000000000))))))
  (FPCHECK_FDIV_ACCURACY
    (fp.mul roundNearestTiesToEven
            (CF_exp a_ack!381)
            (fp.mul roundNearestTiesToEven
                    a!1
                    ((_ to_fp 11 53) #x3fe0000000000000)))
    a!2))))

(check-sat)
(exit)
