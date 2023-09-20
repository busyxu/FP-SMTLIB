(declare-fun limit_ack!6136 () (_ BitVec 64))
(declare-fun a_ack!6137 () (_ BitVec 64))
(declare-fun b_ack!6133 () (_ BitVec 64))
(declare-fun epsabs_ack!6135 () (_ BitVec 64))
(declare-fun c_ack!6134 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_UNDERFLOW
             ((_ BitVec 64) (_ FloatingPoint 11 53))
             Bool)
(declare-fun CF_log ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(assert (not (bvult #x00000000000003e8 limit_ack!6136)))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!6133) ((_ to_fp 11 53) a_ack!6137))))
(assert (not (fp.leq ((_ to_fp 11 53) epsabs_ack!6135)
             ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!6134) ((_ to_fp 11 53) a_ack!6137))))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!6134) ((_ to_fp 11 53) b_ack!6133))))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) b_ack!6133)
                       ((_ to_fp 11 53) a_ack!6137))
               ((_ to_fp 11 53) a_ack!6137))
       ((_ to_fp 11 53) b_ack!6133)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) b_ack!6133)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) b_ack!6133)
                       ((_ to_fp 11 53) a_ack!6137)))
       ((_ to_fp 11 53) a_ack!6137)))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4000000000000000)
                                   ((_ to_fp 11 53) c_ack!6134))
                           ((_ to_fp 11 53) b_ack!6133))
                   ((_ to_fp 11 53) a_ack!6137))))
(let ((a!2 (fp.abs (fp.div roundNearestTiesToEven
                           a!1
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!6133)
                                   ((_ to_fp 11 53) a_ack!6137))))))
  (not (fp.gt a!2 ((_ to_fp 11 53) #x3ff199999999999a))))))
(assert (not (fp.leq (fp.mul roundNearestTiesToEven
                     ((_ to_fp 11 53) #x3ff0000000000000)
                     ((_ to_fp 11 53) a_ack!6137))
             ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (CF_log (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   ((_ to_fp 11 53) a_ack!6137)))
                   ((_ to_fp 11 53) #x1fa007fe00ff6070))))
  (FPCHECK_FMUL_UNDERFLOW #x3fe0000000000000 a!1)))

(check-sat)
(exit)
