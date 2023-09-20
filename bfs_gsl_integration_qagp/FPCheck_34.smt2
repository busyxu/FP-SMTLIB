(declare-fun limit_ack!587 () (_ BitVec 64))
(declare-fun epsabs_ack!592 () (_ BitVec 64))
(declare-fun a_ack!593 () (_ BitVec 64))
(declare-fun x1_ack!588 () (_ BitVec 64))
(declare-fun x2_ack!589 () (_ BitVec 64))
(declare-fun x3_ack!590 () (_ BitVec 64))
(declare-fun b_ack!591 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_OVERFLOW ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(declare-fun CF_log ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(assert (not (bvult #x00000000000003e8 limit_ack!587)))
(assert (not (fp.leq ((_ to_fp 11 53) epsabs_ack!592)
             ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x1_ack!588) ((_ to_fp 11 53) a_ack!593))))
(assert (not (fp.lt ((_ to_fp 11 53) x2_ack!589) ((_ to_fp 11 53) x1_ack!588))))
(assert (not (fp.lt ((_ to_fp 11 53) x3_ack!590) ((_ to_fp 11 53) x2_ack!589))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!591) ((_ to_fp 11 53) x3_ack!590))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!593)
                                   ((_ to_fp 11 53) x1_ack!588))))))
  (not (fp.leq a!1 ((_ to_fp 11 53) #x0000000000000000)))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!593)
                                   ((_ to_fp 11 53) x1_ack!588))))))
  (FPCHECK_FMUL_OVERFLOW
    (fp.div roundNearestTiesToEven
            (CF_log a!1)
            ((_ to_fp 11 53) #x7ff8000000000001))
    #x3fc321082b7cd10f)))

(check-sat)
(exit)
