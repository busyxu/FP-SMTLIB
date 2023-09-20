(declare-fun b_ack!368 () (_ BitVec 64))
(declare-fun a_ack!369 () (_ BitVec 64))
(declare-fun CF_exp ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(declare-fun FPCHECK_FSUB_ACCURACY ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!368) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) b_ack!368)
                    ((_ to_fp 11 53) a_ack!369))
            ((_ to_fp 11 53) #xc086232bdd7abcd2))))
(assert (fp.lt (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) b_ack!368)
               ((_ to_fp 11 53) a_ack!369))
       ((_ to_fp 11 53) #xc014000000000000)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (CF_exp (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!368)
                                   ((_ to_fp 11 53) a_ack!369)))
                   ((_ to_fp 11 53) #x4018000000000000))))
  (fp.eq (fp.add roundNearestTiesToEven
                 (fp.sub roundNearestTiesToEven
                         ((_ to_fp 11 53) #x3fc999999999999a)
                         a!1)
                 a!1)
         ((_ to_fp 11 53) #x3fc999999999999a))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (CF_exp (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!368)
                                   ((_ to_fp 11 53) a_ack!369)))
                   ((_ to_fp 11 53) #x4018000000000000))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 ((_ to_fp 11 53) #x3fc999999999999a)
                 (fp.sub roundNearestTiesToEven
                         ((_ to_fp 11 53) #x3fc999999999999a)
                         a!1))
         a!1)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (CF_exp (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!368)
                                   ((_ to_fp 11 53) a_ack!369)))
                   ((_ to_fp 11 53) #x4018000000000000))))
(let ((a!2 (fp.mul roundNearestTiesToEven
                   (CF_exp (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!368)
                                   ((_ to_fp 11 53) a_ack!369)))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fc999999999999a)
                           a!1))))
  (fp.eq (fp.add roundNearestTiesToEven
                 (fp.sub roundNearestTiesToEven
                         ((_ to_fp 11 53) #x3fd0000000000000)
                         a!2)
                 a!2)
         ((_ to_fp 11 53) #x3fd0000000000000)))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (CF_exp (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!368)
                                   ((_ to_fp 11 53) a_ack!369)))
                   ((_ to_fp 11 53) #x4018000000000000))))
(let ((a!2 (fp.mul roundNearestTiesToEven
                   (CF_exp (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!368)
                                   ((_ to_fp 11 53) a_ack!369)))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fc999999999999a)
                           a!1))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 ((_ to_fp 11 53) #x3fd0000000000000)
                 (fp.sub roundNearestTiesToEven
                         ((_ to_fp 11 53) #x3fd0000000000000)
                         a!2))
         a!2))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (CF_exp (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!368)
                                   ((_ to_fp 11 53) a_ack!369)))
                   ((_ to_fp 11 53) #x4018000000000000))))
(let ((a!2 (fp.mul roundNearestTiesToEven
                   (CF_exp (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!368)
                                   ((_ to_fp 11 53) a_ack!369)))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fc999999999999a)
                           a!1))))
(let ((a!3 (fp.mul roundNearestTiesToEven
                   (CF_exp (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!368)
                                   ((_ to_fp 11 53) a_ack!369)))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fd0000000000000)
                           a!2))))
  (FPCHECK_FSUB_ACCURACY #x3fd5555555555555 a!3)))))

(check-sat)
(exit)
