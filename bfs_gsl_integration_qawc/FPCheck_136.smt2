(declare-fun limit_ack!1781 () (_ BitVec 64))
(declare-fun a_ack!1782 () (_ BitVec 64))
(declare-fun b_ack!1778 () (_ BitVec 64))
(declare-fun epsabs_ack!1780 () (_ BitVec 64))
(declare-fun c_ack!1779 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_UNDERFLOW
             ((_ BitVec 64) (_ FloatingPoint 11 53))
             Bool)
(declare-fun CF_log ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(assert (not (bvult #x00000000000003e8 limit_ack!1781)))
(assert (fp.lt ((_ to_fp 11 53) b_ack!1778) ((_ to_fp 11 53) a_ack!1782)))
(assert (not (fp.leq ((_ to_fp 11 53) epsabs_ack!1780)
             ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!1779) ((_ to_fp 11 53) a_ack!1782))))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!1779) ((_ to_fp 11 53) b_ack!1778))))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4000000000000000)
                           ((_ to_fp 11 53) c_ack!1779))
                   ((_ to_fp 11 53) a_ack!1782))))
  (fp.eq (fp.add roundNearestTiesToEven
                 (fp.sub roundNearestTiesToEven
                         a!1
                         ((_ to_fp 11 53) b_ack!1778))
                 ((_ to_fp 11 53) b_ack!1778))
         a!1)))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4000000000000000)
                           ((_ to_fp 11 53) c_ack!1779))
                   ((_ to_fp 11 53) a_ack!1782))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 a!1
                 (fp.sub roundNearestTiesToEven
                         a!1
                         ((_ to_fp 11 53) b_ack!1778)))
         ((_ to_fp 11 53) b_ack!1778))))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4000000000000000)
                                   ((_ to_fp 11 53) c_ack!1779))
                           ((_ to_fp 11 53) a_ack!1782))
                   ((_ to_fp 11 53) b_ack!1778))))
(let ((a!2 (fp.abs (fp.div roundNearestTiesToEven
                           a!1
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!1782)
                                   ((_ to_fp 11 53) b_ack!1778))))))
  (not (fp.gt a!2 ((_ to_fp 11 53) #x3ff199999999999a))))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (CF_log (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   ((_ to_fp 11 53) a_ack!1782)))
                   ((_ to_fp 11 53) #x2476a09e667f3bcd))))
  (FPCHECK_FMUL_UNDERFLOW #x3fe0000000000000 a!1)))

(check-sat)
(exit)
