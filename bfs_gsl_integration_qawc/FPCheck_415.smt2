(declare-fun limit_ack!5450 () (_ BitVec 64))
(declare-fun a_ack!5451 () (_ BitVec 64))
(declare-fun b_ack!5446 () (_ BitVec 64))
(declare-fun epsabs_ack!5448 () (_ BitVec 64))
(declare-fun epsrel_ack!5449 () (_ BitVec 64))
(declare-fun c_ack!5447 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_INVALID
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(declare-fun CF_log ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(assert (not (bvult #x00000000000003e8 limit_ack!5450)))
(assert (fp.lt ((_ to_fp 11 53) b_ack!5446) ((_ to_fp 11 53) a_ack!5451)))
(assert (fp.leq ((_ to_fp 11 53) epsabs_ack!5448) ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (fp.lt ((_ to_fp 11 53) epsrel_ack!5449)
            ((_ to_fp 11 53) #x3d09000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) epsrel_ack!5449)
            ((_ to_fp 11 53) #x3a0fb0f6be506019))))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!5447) ((_ to_fp 11 53) a_ack!5451))))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!5447) ((_ to_fp 11 53) b_ack!5446))))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4000000000000000)
                           ((_ to_fp 11 53) c_ack!5447))
                   ((_ to_fp 11 53) a_ack!5451))))
  (fp.eq (fp.add roundNearestTiesToEven
                 (fp.sub roundNearestTiesToEven
                         a!1
                         ((_ to_fp 11 53) b_ack!5446))
                 ((_ to_fp 11 53) b_ack!5446))
         a!1)))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4000000000000000)
                           ((_ to_fp 11 53) c_ack!5447))
                   ((_ to_fp 11 53) a_ack!5451))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 a!1
                 (fp.sub roundNearestTiesToEven
                         a!1
                         ((_ to_fp 11 53) b_ack!5446)))
         ((_ to_fp 11 53) b_ack!5446))))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4000000000000000)
                                   ((_ to_fp 11 53) c_ack!5447))
                           ((_ to_fp 11 53) a_ack!5451))
                   ((_ to_fp 11 53) b_ack!5446))))
(let ((a!2 (fp.abs (fp.div roundNearestTiesToEven
                           a!1
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!5451)
                                   ((_ to_fp 11 53) b_ack!5446))))))
  (fp.gt a!2 ((_ to_fp 11 53) #x3ff199999999999a)))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!5451)
                                   ((_ to_fp 11 53) b_ack!5446)))
                   ((_ to_fp 11 53) #x3fee5f178e7c6229))))
(let ((a!2 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!5446)
                                   ((_ to_fp 11 53) a_ack!5451)))
                   a!1)))
(let ((a!3 (fp.div roundNearestTiesToEven
                   (CF_log (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   a!2))
                   ((_ to_fp 11 53) #x1f9f9719f460e766))))
  (FPCHECK_FDIV_INVALID
    a!3
    (fp.sub roundNearestTiesToEven a!2 ((_ to_fp 11 53) c_ack!5447)))))))

(check-sat)
(exit)
