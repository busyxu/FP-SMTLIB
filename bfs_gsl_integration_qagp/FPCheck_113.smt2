(declare-fun limit_ack!1798 () (_ BitVec 64))
(declare-fun epsabs_ack!1803 () (_ BitVec 64))
(declare-fun a_ack!1804 () (_ BitVec 64))
(declare-fun x1_ack!1799 () (_ BitVec 64))
(declare-fun x2_ack!1800 () (_ BitVec 64))
(declare-fun x3_ack!1801 () (_ BitVec 64))
(declare-fun b_ack!1802 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_ACCURACY
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(declare-fun CF_log ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(assert (not (bvult #x00000000000003e8 limit_ack!1798)))
(assert (not (fp.leq ((_ to_fp 11 53) epsabs_ack!1803)
             ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x1_ack!1799) ((_ to_fp 11 53) a_ack!1804))))
(assert (not (fp.lt ((_ to_fp 11 53) x2_ack!1800) ((_ to_fp 11 53) x1_ack!1799))))
(assert (not (fp.lt ((_ to_fp 11 53) x3_ack!1801) ((_ to_fp 11 53) x2_ack!1800))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!1802) ((_ to_fp 11 53) x3_ack!1801))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!1804)
                                   ((_ to_fp 11 53) x1_ack!1799))))))
  (not (fp.leq a!1 ((_ to_fp 11 53) #x0000000000000000)))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3fe0000000000000)
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) a_ack!1804)
                           ((_ to_fp 11 53) x1_ack!1799))))
      (a!2 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!1799)
                                   ((_ to_fp 11 53) a_ack!1804)))
                   ((_ to_fp 11 53) #x3febae995e9cb2f3))))
(let ((a!3 (fp.div roundNearestTiesToEven
                   (CF_log (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   (fp.sub roundNearestTiesToEven a!1 a!2)))
                   ((_ to_fp 11 53) #x7ff8000000000001)))
      (a!4 (fp.div roundNearestTiesToEven
                   (CF_log (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   (fp.add roundNearestTiesToEven a!1 a!2)))
                   ((_ to_fp 11 53) #x7ff8000000000001))))
  (FPCHECK_FADD_ACCURACY a!3 a!4))))

(check-sat)
(exit)
