(declare-fun limit_ack!6296 () (_ BitVec 64))
(declare-fun a_ack!6297 () (_ BitVec 64))
(declare-fun b_ack!6293 () (_ BitVec 64))
(declare-fun epsabs_ack!6295 () (_ BitVec 64))
(declare-fun c_ack!6294 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ BitVec 64))
             Bool)
(declare-fun CF_log ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(assert (not (bvult #x00000000000003e8 limit_ack!6296)))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!6293) ((_ to_fp 11 53) a_ack!6297))))
(assert (not (fp.leq ((_ to_fp 11 53) epsabs_ack!6295)
             ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!6294) ((_ to_fp 11 53) a_ack!6297))))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!6294) ((_ to_fp 11 53) b_ack!6293))))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) b_ack!6293)
                       ((_ to_fp 11 53) a_ack!6297))
               ((_ to_fp 11 53) a_ack!6297))
       ((_ to_fp 11 53) b_ack!6293)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) b_ack!6293)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) b_ack!6293)
                       ((_ to_fp 11 53) a_ack!6297)))
       ((_ to_fp 11 53) a_ack!6297)))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4000000000000000)
                                   ((_ to_fp 11 53) c_ack!6294))
                           ((_ to_fp 11 53) b_ack!6293))
                   ((_ to_fp 11 53) a_ack!6297))))
(let ((a!2 (fp.abs (fp.div roundNearestTiesToEven
                           a!1
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!6293)
                                   ((_ to_fp 11 53) a_ack!6297))))))
  (not (fp.gt a!2 ((_ to_fp 11 53) #x3ff199999999999a))))))
(assert (not (fp.leq (fp.mul roundNearestTiesToEven
                     ((_ to_fp 11 53) #x3ff0000000000000)
                     ((_ to_fp 11 53) a_ack!6297))
             ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!6293)
                                   ((_ to_fp 11 53) a_ack!6297)))
                   ((_ to_fp 11 53) #x3fefb9ea92ec689b))))
(let ((a!2 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!6293)
                                   ((_ to_fp 11 53) a_ack!6297)))
                   a!1)))
  (FPCHECK_FDIV_UNDERFLOW
    (CF_log (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3ff0000000000000)
                    a!2))
    #x1ff93e7bd66bf6ab))))

(check-sat)
(exit)
