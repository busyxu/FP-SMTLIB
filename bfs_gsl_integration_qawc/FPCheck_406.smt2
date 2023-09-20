(declare-fun limit_ack!5330 () (_ BitVec 64))
(declare-fun a_ack!5331 () (_ BitVec 64))
(declare-fun b_ack!5326 () (_ BitVec 64))
(declare-fun epsabs_ack!5328 () (_ BitVec 64))
(declare-fun epsrel_ack!5329 () (_ BitVec 64))
(declare-fun c_ack!5327 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_OVERFLOW ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(declare-fun CF_log ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(assert (not (bvult #x00000000000003e8 limit_ack!5330)))
(assert (fp.lt ((_ to_fp 11 53) b_ack!5326) ((_ to_fp 11 53) a_ack!5331)))
(assert (fp.leq ((_ to_fp 11 53) epsabs_ack!5328) ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (fp.lt ((_ to_fp 11 53) epsrel_ack!5329)
            ((_ to_fp 11 53) #x3d09000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) epsrel_ack!5329)
            ((_ to_fp 11 53) #x3a0fb0f6be506019))))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!5327) ((_ to_fp 11 53) a_ack!5331))))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!5327) ((_ to_fp 11 53) b_ack!5326))))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4000000000000000)
                           ((_ to_fp 11 53) c_ack!5327))
                   ((_ to_fp 11 53) a_ack!5331))))
  (fp.eq (fp.add roundNearestTiesToEven
                 (fp.sub roundNearestTiesToEven
                         a!1
                         ((_ to_fp 11 53) b_ack!5326))
                 ((_ to_fp 11 53) b_ack!5326))
         a!1)))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4000000000000000)
                           ((_ to_fp 11 53) c_ack!5327))
                   ((_ to_fp 11 53) a_ack!5331))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 a!1
                 (fp.sub roundNearestTiesToEven
                         a!1
                         ((_ to_fp 11 53) b_ack!5326)))
         ((_ to_fp 11 53) b_ack!5326))))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4000000000000000)
                                   ((_ to_fp 11 53) c_ack!5327))
                           ((_ to_fp 11 53) a_ack!5331))
                   ((_ to_fp 11 53) b_ack!5326))))
(let ((a!2 (fp.abs (fp.div roundNearestTiesToEven
                           a!1
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!5331)
                                   ((_ to_fp 11 53) b_ack!5326))))))
  (fp.gt a!2 ((_ to_fp 11 53) #x3ff199999999999a)))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!5331)
                                   ((_ to_fp 11 53) b_ack!5326)))
                   ((_ to_fp 11 53) #x3fee5f178e7c6229))))
(let ((a!2 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!5326)
                                   ((_ to_fp 11 53) a_ack!5331)))
                   a!1)))
  (FPCHECK_FDIV_OVERFLOW
    (CF_log (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3ff0000000000000)
                    a!2))
    #x1f9f9719f460e766))))

(check-sat)
(exit)
