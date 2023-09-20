(declare-fun b_ack!301 () (_ BitVec 64))
(declare-fun a_ack!302 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_OVERFLOW ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!301) ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!302)
                                   ((_ to_fp 11 53) a_ack!302))
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!301)
                                   ((_ to_fp 11 53) b_ack!301)))
                   ((_ to_fp 11 53) #x3ff0000000000000))))
  (not (fp.lt (fp.abs a!1) ((_ to_fp 11 53) #x3cb0000000000000)))))
(assert (fp.lt (fp.add roundNearestTiesToEven
               (fp.mul roundNearestTiesToEven
                       ((_ to_fp 11 53) a_ack!302)
                       ((_ to_fp 11 53) a_ack!302))
               (fp.mul roundNearestTiesToEven
                       ((_ to_fp 11 53) b_ack!301)
                       ((_ to_fp 11 53) b_ack!301)))
       ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!302) ((_ to_fp 11 53) #x3fe76c8b43958106))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!302)
                                   ((_ to_fp 11 53) #x0020000000000000)))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!301)
                           ((_ to_fp 11 53) #x0020000000000000)))))
(let ((a!2 (fp.sub roundNearestTiesToEven
                   a!1
                   (fp.mul roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!301)
                                   ((_ to_fp 11 53) #x0020000000000000))
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!302)
                                   ((_ to_fp 11 53) #x0020000000000000))))))
  (FPCHECK_FMUL_OVERFLOW
    #x0000000000000000
    (fp.sub roundNearestTiesToEven
            (fp.div roundNearestTiesToEven
                    ((_ to_fp 11 53) b_ack!301)
                    ((_ to_fp 11 53) #x0020000000000000))
            a!2)))))

(check-sat)
(exit)
