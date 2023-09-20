(declare-fun limit_ack!6106 () (_ BitVec 64))
(declare-fun a_ack!6107 () (_ BitVec 64))
(declare-fun b_ack!6103 () (_ BitVec 64))
(declare-fun epsabs_ack!6105 () (_ BitVec 64))
(declare-fun c_ack!6104 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_ACCURACY ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(declare-fun CF_log ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(assert (not (bvult #x00000000000003e8 limit_ack!6106)))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!6103) ((_ to_fp 11 53) a_ack!6107))))
(assert (not (fp.leq ((_ to_fp 11 53) epsabs_ack!6105)
             ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!6104) ((_ to_fp 11 53) a_ack!6107))))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!6104) ((_ to_fp 11 53) b_ack!6103))))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) b_ack!6103)
                       ((_ to_fp 11 53) a_ack!6107))
               ((_ to_fp 11 53) a_ack!6107))
       ((_ to_fp 11 53) b_ack!6103)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) b_ack!6103)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) b_ack!6103)
                       ((_ to_fp 11 53) a_ack!6107)))
       ((_ to_fp 11 53) a_ack!6107)))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4000000000000000)
                                   ((_ to_fp 11 53) c_ack!6104))
                           ((_ to_fp 11 53) b_ack!6103))
                   ((_ to_fp 11 53) a_ack!6107))))
(let ((a!2 (fp.abs (fp.div roundNearestTiesToEven
                           a!1
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!6103)
                                   ((_ to_fp 11 53) a_ack!6107))))))
  (not (fp.gt a!2 ((_ to_fp 11 53) #x3ff199999999999a))))))
(assert (not (fp.leq (fp.mul roundNearestTiesToEven
                     ((_ to_fp 11 53) #x3ff0000000000000)
                     ((_ to_fp 11 53) a_ack!6107))
             ((_ to_fp 11 53) #x0000000000000000))))
(assert (FPCHECK_FDIV_ACCURACY
  (CF_log (fp.mul roundNearestTiesToEven
                  ((_ to_fp 11 53) #x3ff0000000000000)
                  ((_ to_fp 11 53) a_ack!6107)))
  #x1fa007fe00ff6070))

(check-sat)
(exit)
