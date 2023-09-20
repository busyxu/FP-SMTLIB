(declare-fun limit_ack!1736 () (_ BitVec 64))
(declare-fun a_ack!1737 () (_ BitVec 64))
(declare-fun b_ack!1733 () (_ BitVec 64))
(declare-fun epsabs_ack!1735 () (_ BitVec 64))
(declare-fun c_ack!1734 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_OVERFLOW ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(declare-fun CF_log ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(assert (not (bvult #x00000000000003e8 limit_ack!1736)))
(assert (fp.lt ((_ to_fp 11 53) b_ack!1733) ((_ to_fp 11 53) a_ack!1737)))
(assert (not (fp.leq ((_ to_fp 11 53) epsabs_ack!1735)
             ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!1734) ((_ to_fp 11 53) a_ack!1737))))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!1734) ((_ to_fp 11 53) b_ack!1733))))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4000000000000000)
                           ((_ to_fp 11 53) c_ack!1734))
                   ((_ to_fp 11 53) a_ack!1737))))
  (fp.eq (fp.add roundNearestTiesToEven
                 (fp.sub roundNearestTiesToEven
                         a!1
                         ((_ to_fp 11 53) b_ack!1733))
                 ((_ to_fp 11 53) b_ack!1733))
         a!1)))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4000000000000000)
                           ((_ to_fp 11 53) c_ack!1734))
                   ((_ to_fp 11 53) a_ack!1737))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 a!1
                 (fp.sub roundNearestTiesToEven
                         a!1
                         ((_ to_fp 11 53) b_ack!1733)))
         ((_ to_fp 11 53) b_ack!1733))))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4000000000000000)
                                   ((_ to_fp 11 53) c_ack!1734))
                           ((_ to_fp 11 53) a_ack!1737))
                   ((_ to_fp 11 53) b_ack!1733))))
(let ((a!2 (fp.abs (fp.div roundNearestTiesToEven
                           a!1
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!1737)
                                   ((_ to_fp 11 53) b_ack!1733))))))
  (not (fp.gt a!2 ((_ to_fp 11 53) #x3ff199999999999a))))))
(assert (FPCHECK_FDIV_OVERFLOW
  (CF_log (fp.mul roundNearestTiesToEven
                  ((_ to_fp 11 53) #x3ff0000000000000)
                  ((_ to_fp 11 53) a_ack!1737)))
  #x2476a09e667f3bcd))

(check-sat)
(exit)
