(declare-fun limit_ack!2191 () (_ BitVec 64))
(declare-fun a_ack!2192 () (_ BitVec 64))
(declare-fun b_ack!2188 () (_ BitVec 64))
(declare-fun epsabs_ack!2190 () (_ BitVec 64))
(declare-fun c_ack!2189 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ BitVec 64))
             Bool)
(declare-fun CF_log ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(assert (not (bvult #x00000000000003e8 limit_ack!2191)))
(assert (fp.lt ((_ to_fp 11 53) b_ack!2188) ((_ to_fp 11 53) a_ack!2192)))
(assert (not (fp.leq ((_ to_fp 11 53) epsabs_ack!2190)
             ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!2189) ((_ to_fp 11 53) a_ack!2192))))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!2189) ((_ to_fp 11 53) b_ack!2188))))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4000000000000000)
                           ((_ to_fp 11 53) c_ack!2189))
                   ((_ to_fp 11 53) a_ack!2192))))
  (fp.eq (fp.add roundNearestTiesToEven
                 (fp.sub roundNearestTiesToEven
                         a!1
                         ((_ to_fp 11 53) b_ack!2188))
                 ((_ to_fp 11 53) b_ack!2188))
         a!1)))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4000000000000000)
                           ((_ to_fp 11 53) c_ack!2189))
                   ((_ to_fp 11 53) a_ack!2192))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 a!1
                 (fp.sub roundNearestTiesToEven
                         a!1
                         ((_ to_fp 11 53) b_ack!2188)))
         ((_ to_fp 11 53) b_ack!2188))))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4000000000000000)
                                   ((_ to_fp 11 53) c_ack!2189))
                           ((_ to_fp 11 53) a_ack!2192))
                   ((_ to_fp 11 53) b_ack!2188))))
(let ((a!2 (fp.abs (fp.div roundNearestTiesToEven
                           a!1
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!2192)
                                   ((_ to_fp 11 53) b_ack!2188))))))
  (fp.gt a!2 ((_ to_fp 11 53) #x3ff199999999999a)))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!2188)
                                   ((_ to_fp 11 53) a_ack!2192))))))
  (FPCHECK_FDIV_UNDERFLOW (CF_log a!1) #x1ef0000000000000)))

(check-sat)
(exit)
