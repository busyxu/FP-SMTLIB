(declare-fun limit_ack!552 () (_ BitVec 64))
(declare-fun epsabs_ack!557 () (_ BitVec 64))
(declare-fun a_ack!558 () (_ BitVec 64))
(declare-fun x1_ack!553 () (_ BitVec 64))
(declare-fun x2_ack!554 () (_ BitVec 64))
(declare-fun x3_ack!555 () (_ BitVec 64))
(declare-fun b_ack!556 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_OVERFLOW ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(declare-fun CF_log ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(assert (not (bvult #x00000000000003e8 limit_ack!552)))
(assert (not (fp.leq ((_ to_fp 11 53) epsabs_ack!557)
             ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x1_ack!553) ((_ to_fp 11 53) a_ack!558))))
(assert (not (fp.lt ((_ to_fp 11 53) x2_ack!554) ((_ to_fp 11 53) x1_ack!553))))
(assert (not (fp.lt ((_ to_fp 11 53) x3_ack!555) ((_ to_fp 11 53) x2_ack!554))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!556) ((_ to_fp 11 53) x3_ack!555))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!558)
                                   ((_ to_fp 11 53) x1_ack!553))))))
  (not (fp.leq a!1 ((_ to_fp 11 53) #x0000000000000000)))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!558)
                                   ((_ to_fp 11 53) x1_ack!553))))))
  (FPCHECK_FDIV_OVERFLOW (CF_log a!1) #x7ff8000000000001)))

(check-sat)
(exit)
