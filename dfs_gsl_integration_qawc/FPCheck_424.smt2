(declare-fun limit_ack!6361 () (_ BitVec 64))
(declare-fun a_ack!6362 () (_ BitVec 64))
(declare-fun b_ack!6358 () (_ BitVec 64))
(declare-fun epsabs_ack!6360 () (_ BitVec 64))
(declare-fun c_ack!6359 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_OVERFLOW ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(assert (not (bvult #x00000000000003e8 limit_ack!6361)))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!6358) ((_ to_fp 11 53) a_ack!6362))))
(assert (not (fp.leq ((_ to_fp 11 53) epsabs_ack!6360)
             ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!6359) ((_ to_fp 11 53) a_ack!6362))))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!6359) ((_ to_fp 11 53) b_ack!6358))))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) b_ack!6358)
                       ((_ to_fp 11 53) a_ack!6362))
               ((_ to_fp 11 53) a_ack!6362))
       ((_ to_fp 11 53) b_ack!6358)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) b_ack!6358)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) b_ack!6358)
                       ((_ to_fp 11 53) a_ack!6362)))
       ((_ to_fp 11 53) a_ack!6362)))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4000000000000000)
                                   ((_ to_fp 11 53) c_ack!6359))
                           ((_ to_fp 11 53) b_ack!6358))
                   ((_ to_fp 11 53) a_ack!6362))))
(let ((a!2 (fp.abs (fp.div roundNearestTiesToEven
                           a!1
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!6358)
                                   ((_ to_fp 11 53) a_ack!6362))))))
  (not (fp.gt a!2 ((_ to_fp 11 53) #x3ff199999999999a))))))
(assert (not (fp.leq (fp.mul roundNearestTiesToEven
                     ((_ to_fp 11 53) #x3ff0000000000000)
                     ((_ to_fp 11 53) a_ack!6362))
             ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!6358)
                                   ((_ to_fp 11 53) a_ack!6362)))
                   ((_ to_fp 11 53) #x3fefb9ea92ec689b))))
(let ((a!2 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!6358)
                                   ((_ to_fp 11 53) a_ack!6362)))
                   a!1)))
  (FPCHECK_FMUL_OVERFLOW #x3ff0000000000000 a!2))))

(check-sat)
(exit)
