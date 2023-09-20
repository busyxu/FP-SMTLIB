(declare-fun a_ack!400 () (_ BitVec 64))
(declare-fun CF_exp ((_ BitVec 64)) (_ FloatingPoint 11 53))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!400) ((_ to_fp 11 53) #xc086232bdd7abcd2))))
(assert (fp.lt ((_ to_fp 11 53) a_ack!400) ((_ to_fp 11 53) #xbff0000000000000)))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   (CF_exp a_ack!400))
                           ((_ to_fp 11 53) #x3fe0000000000000))
                   ((_ to_fp 11 53) #x3fe0000000000000))))
(let ((a!2 (fp.add roundNearestTiesToEven
                   (CF_exp a_ack!400)
                   (fp.mul roundNearestTiesToEven
                           (CF_exp a_ack!400)
                           (fp.mul roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #x3fe0000000000000))))))
  (fp.eq (fp.sub roundNearestTiesToEven a!2 (CF_exp a_ack!400))
         (fp.mul roundNearestTiesToEven
                 (CF_exp a_ack!400)
                 (fp.mul roundNearestTiesToEven
                         a!1
                         ((_ to_fp 11 53) #x3fe0000000000000)))))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   (CF_exp a_ack!400))
                           ((_ to_fp 11 53) #x3fe0000000000000))
                   ((_ to_fp 11 53) #x3fe0000000000000))))
(let ((a!2 (fp.add roundNearestTiesToEven
                   (CF_exp a_ack!400)
                   (fp.mul roundNearestTiesToEven
                           (CF_exp a_ack!400)
                           (fp.mul roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #x3fe0000000000000))))))
(let ((a!3 (fp.sub roundNearestTiesToEven
                   a!2
                   (fp.mul roundNearestTiesToEven
                           (CF_exp a_ack!400)
                           (fp.mul roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #x3fe0000000000000))))))
  (fp.eq a!3 (CF_exp a_ack!400))))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   (CF_exp a_ack!400))
                           ((_ to_fp 11 53) #x3fe0000000000000))
                   ((_ to_fp 11 53) #x3fe0000000000000))))
(let ((a!2 (fp.add roundNearestTiesToEven
                   (CF_exp a_ack!400)
                   (fp.mul roundNearestTiesToEven
                           (CF_exp a_ack!400)
                           (fp.mul roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #x3fe0000000000000))))))
(let ((a!3 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (CF_exp a_ack!400)
                           (fp.mul roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #x3fe0000000000000)))
                   a!2)))
  (fp.lt (fp.abs a!3) ((_ to_fp 11 53) #x3cb0000000000000))))))

(check-sat)
(exit)
