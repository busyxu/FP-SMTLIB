(declare-fun limit_ack!1886 () (_ BitVec 64))
(declare-fun a_ack!1887 () (_ BitVec 64))
(declare-fun b_ack!1883 () (_ BitVec 64))
(declare-fun epsabs_ack!1885 () (_ BitVec 64))
(declare-fun c_ack!1884 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ BitVec 64))
             Bool)
(declare-fun CF_log ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(assert (not (bvult #x00000000000003e8 limit_ack!1886)))
(assert (fp.lt ((_ to_fp 11 53) b_ack!1883) ((_ to_fp 11 53) a_ack!1887)))
(assert (not (fp.leq ((_ to_fp 11 53) epsabs_ack!1885)
             ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!1884) ((_ to_fp 11 53) a_ack!1887))))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!1884) ((_ to_fp 11 53) b_ack!1883))))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4000000000000000)
                           ((_ to_fp 11 53) c_ack!1884))
                   ((_ to_fp 11 53) a_ack!1887))))
  (fp.eq (fp.add roundNearestTiesToEven
                 (fp.sub roundNearestTiesToEven
                         a!1
                         ((_ to_fp 11 53) b_ack!1883))
                 ((_ to_fp 11 53) b_ack!1883))
         a!1)))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4000000000000000)
                           ((_ to_fp 11 53) c_ack!1884))
                   ((_ to_fp 11 53) a_ack!1887))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 a!1
                 (fp.sub roundNearestTiesToEven
                         a!1
                         ((_ to_fp 11 53) b_ack!1883)))
         ((_ to_fp 11 53) b_ack!1883))))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4000000000000000)
                                   ((_ to_fp 11 53) c_ack!1884))
                           ((_ to_fp 11 53) a_ack!1887))
                   ((_ to_fp 11 53) b_ack!1883))))
(let ((a!2 (fp.abs (fp.div roundNearestTiesToEven
                           a!1
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!1887)
                                   ((_ to_fp 11 53) b_ack!1883))))))
  (not (fp.gt a!2 ((_ to_fp 11 53) #x3ff199999999999a))))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!1887)
                                   ((_ to_fp 11 53) b_ack!1883))))))
  (FPCHECK_FDIV_UNDERFLOW (CF_log a!1) #x2470000000000000)))

(check-sat)
(exit)
