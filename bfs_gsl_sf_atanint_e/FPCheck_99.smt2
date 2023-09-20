(declare-fun a_ack!146 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_ACCURACY ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(assert (not (fp.eq (fp.abs ((_ to_fp 11 53) a_ack!146))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt (fp.abs ((_ to_fp 11 53) a_ack!146))
            ((_ to_fp 11 53) #x3e40000000000000))))
(assert (not (fp.leq (fp.abs ((_ to_fp 11 53) a_ack!146))
             ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (fp.lt (fp.abs ((_ to_fp 11 53) a_ack!146))
       ((_ to_fp 11 53) #x4190000000000000)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) a_ack!146)
                           ((_ to_fp 11 53) a_ack!146)))))
  (fp.eq (fp.add roundNearestTiesToEven
                 (fp.sub roundNearestTiesToEven
                         a!1
                         ((_ to_fp 11 53) #x3fe0000000000000))
                 ((_ to_fp 11 53) #x3fe0000000000000))
         a!1)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) a_ack!146)
                           ((_ to_fp 11 53) a_ack!146)))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 a!1
                 (fp.sub roundNearestTiesToEven
                         a!1
                         ((_ to_fp 11 53) #x3fe0000000000000)))
         ((_ to_fp 11 53) #x3fe0000000000000))))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!146)
                                   ((_ to_fp 11 53) a_ack!146)))
                   ((_ to_fp 11 53) #x3fe0000000000000))))
  (FPCHECK_FMUL_ACCURACY
    #x4000000000000000
    (fp.mul roundNearestTiesToEven ((_ to_fp 11 53) #x4000000000000000) a!1))))

(check-sat)
(exit)
