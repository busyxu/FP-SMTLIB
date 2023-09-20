(declare-fun limit_ack!2276 () (_ BitVec 64))
(declare-fun a_ack!2277 () (_ BitVec 64))
(declare-fun b_ack!2273 () (_ BitVec 64))
(declare-fun epsabs_ack!2275 () (_ BitVec 64))
(declare-fun c_ack!2274 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_INVALID
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(declare-fun CF_log ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(assert (not (bvult #x00000000000003e8 limit_ack!2276)))
(assert (fp.lt ((_ to_fp 11 53) b_ack!2273) ((_ to_fp 11 53) a_ack!2277)))
(assert (not (fp.leq ((_ to_fp 11 53) epsabs_ack!2275)
             ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!2274) ((_ to_fp 11 53) a_ack!2277))))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!2274) ((_ to_fp 11 53) b_ack!2273))))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4000000000000000)
                           ((_ to_fp 11 53) c_ack!2274))
                   ((_ to_fp 11 53) a_ack!2277))))
  (fp.eq (fp.add roundNearestTiesToEven
                 (fp.sub roundNearestTiesToEven
                         a!1
                         ((_ to_fp 11 53) b_ack!2273))
                 ((_ to_fp 11 53) b_ack!2273))
         a!1)))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4000000000000000)
                           ((_ to_fp 11 53) c_ack!2274))
                   ((_ to_fp 11 53) a_ack!2277))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 a!1
                 (fp.sub roundNearestTiesToEven
                         a!1
                         ((_ to_fp 11 53) b_ack!2273)))
         ((_ to_fp 11 53) b_ack!2273))))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4000000000000000)
                                   ((_ to_fp 11 53) c_ack!2274))
                           ((_ to_fp 11 53) a_ack!2277))
                   ((_ to_fp 11 53) b_ack!2273))))
(let ((a!2 (fp.abs (fp.div roundNearestTiesToEven
                           a!1
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!2277)
                                   ((_ to_fp 11 53) b_ack!2273))))))
  (fp.gt a!2 ((_ to_fp 11 53) #x3ff199999999999a)))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3fe0000000000000)
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!2273)
                           ((_ to_fp 11 53) a_ack!2277)))))
(let ((a!2 (fp.div roundNearestTiesToEven
                   (CF_log (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   a!1))
                   ((_ to_fp 11 53) #x1ef0000000000000))))
  (FPCHECK_FDIV_INVALID
    a!2
    (fp.sub roundNearestTiesToEven a!1 ((_ to_fp 11 53) c_ack!2274))))))

(check-sat)
(exit)
