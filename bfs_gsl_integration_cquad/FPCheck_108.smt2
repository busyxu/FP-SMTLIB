(declare-fun epsabs_ack!872 () (_ BitVec 64))
(declare-fun epsrel_ack!873 () (_ BitVec 64))
(declare-fun a_ack!874 () (_ BitVec 64))
(declare-fun b_ack!871 () (_ BitVec 64))
(declare-fun CF_log ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(declare-fun FPCHECK_FDIV_ACCURACY ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(assert (not (fp.lt ((_ to_fp 11 53) epsabs_ack!872)
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) epsrel_ack!873)
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.leq ((_ to_fp 11 53) epsabs_ack!872)
             ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #xbff0000000000000)
                   (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!871)
                                   ((_ to_fp 11 53) a_ack!874))
                           ((_ to_fp 11 53) #x4000000000000000)))))
(let ((a!2 (fp.add roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!874)
                                   ((_ to_fp 11 53) b_ack!871))
                           ((_ to_fp 11 53) #x4000000000000000))
                   a!1)))
  (not (fp.leq (fp.mul roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       a!2)
               ((_ to_fp 11 53) #x0000000000000000))))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #xbff0000000000000)
                   (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!871)
                                   ((_ to_fp 11 53) a_ack!874))
                           ((_ to_fp 11 53) #x4000000000000000)))))
(let ((a!2 (fp.add roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!874)
                                   ((_ to_fp 11 53) b_ack!871))
                           ((_ to_fp 11 53) #x4000000000000000))
                   a!1)))
(let ((a!3 (fp.div roundNearestTiesToEven
                   (CF_log (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   a!2))
                   ((_ to_fp 11 53) #x1e73988e1409212e))))
  (not (or (fp.isNaN (fp.abs a!3))
           (fp.eq (fp.abs a!3) ((_ to_fp 11 53) #x7ff0000000000000))))))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #xbfefd88da3d12526)
                   (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!871)
                                   ((_ to_fp 11 53) a_ack!874))
                           ((_ to_fp 11 53) #x4000000000000000)))))
(let ((a!2 (fp.add roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!874)
                                   ((_ to_fp 11 53) b_ack!871))
                           ((_ to_fp 11 53) #x4000000000000000))
                   a!1)))
  (FPCHECK_FDIV_ACCURACY
    (CF_log (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3ff0000000000000)
                    a!2))
    #x1e73988e1409212e))))

(check-sat)
(exit)
