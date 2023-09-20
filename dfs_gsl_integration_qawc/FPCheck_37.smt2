(declare-fun limit_ack!596 () (_ BitVec 64))
(declare-fun a_ack!597 () (_ BitVec 64))
(declare-fun b_ack!592 () (_ BitVec 64))
(declare-fun epsabs_ack!594 () (_ BitVec 64))
(declare-fun epsrel_ack!595 () (_ BitVec 64))
(declare-fun c_ack!593 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ BitVec 64))
             Bool)
(declare-fun CF_log ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(assert (not (bvult #x00000000000003e8 limit_ack!596)))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!592) ((_ to_fp 11 53) a_ack!597))))
(assert (fp.leq ((_ to_fp 11 53) epsabs_ack!594) ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (fp.lt ((_ to_fp 11 53) epsrel_ack!595)
            ((_ to_fp 11 53) #x3d09000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) epsrel_ack!595)
            ((_ to_fp 11 53) #x3a0fb0f6be506019))))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!593) ((_ to_fp 11 53) a_ack!597))))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!593) ((_ to_fp 11 53) b_ack!592))))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4000000000000000)
                           ((_ to_fp 11 53) c_ack!593))
                   ((_ to_fp 11 53) b_ack!592))))
  (fp.eq (fp.add roundNearestTiesToEven
                 (fp.sub roundNearestTiesToEven a!1 ((_ to_fp 11 53) a_ack!597))
                 ((_ to_fp 11 53) a_ack!597))
         a!1)))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4000000000000000)
                           ((_ to_fp 11 53) c_ack!593))
                   ((_ to_fp 11 53) b_ack!592))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 a!1
                 (fp.sub roundNearestTiesToEven a!1 ((_ to_fp 11 53) a_ack!597)))
         ((_ to_fp 11 53) a_ack!597))))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4000000000000000)
                                   ((_ to_fp 11 53) c_ack!593))
                           ((_ to_fp 11 53) b_ack!592))
                   ((_ to_fp 11 53) a_ack!597))))
(let ((a!2 (and (not (fp.eq a!1 ((_ to_fp 11 53) #x0000000000000000)))
                (fp.eq (fp.sub roundNearestTiesToEven
                               ((_ to_fp 11 53) b_ack!592)
                               ((_ to_fp 11 53) a_ack!597))
                       ((_ to_fp 11 53) #x0000000000000000)))))
  (not a!2))))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4000000000000000)
                                   ((_ to_fp 11 53) c_ack!593))
                           ((_ to_fp 11 53) b_ack!592))
                   ((_ to_fp 11 53) a_ack!597))))
(let ((a!2 (fp.abs (fp.div roundNearestTiesToEven
                           a!1
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!592)
                                   ((_ to_fp 11 53) a_ack!597))))))
  (not (fp.gt a!2 ((_ to_fp 11 53) #x3ff199999999999a))))))
(assert (FPCHECK_FDIV_UNDERFLOW
  (CF_log (fp.mul roundNearestTiesToEven
                  ((_ to_fp 11 53) #x3ff0000000000000)
                  ((_ to_fp 11 53) b_ack!592)))
  #x1fcbc8ee6b28738b))

(check-sat)
(exit)
