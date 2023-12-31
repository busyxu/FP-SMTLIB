(declare-fun limit_ack!1841 () (_ BitVec 64))
(declare-fun a_ack!1842 () (_ BitVec 64))
(declare-fun b_ack!1838 () (_ BitVec 64))
(declare-fun epsabs_ack!1840 () (_ BitVec 64))
(declare-fun c_ack!1839 () (_ BitVec 64))
(declare-fun FPCHECK_FINVALID_LOG
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (bvult #x00000000000003e8 limit_ack!1841)))
(assert (fp.lt ((_ to_fp 11 53) b_ack!1838) ((_ to_fp 11 53) a_ack!1842)))
(assert (not (fp.leq ((_ to_fp 11 53) epsabs_ack!1840)
             ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!1839) ((_ to_fp 11 53) a_ack!1842))))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!1839) ((_ to_fp 11 53) b_ack!1838))))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4000000000000000)
                           ((_ to_fp 11 53) c_ack!1839))
                   ((_ to_fp 11 53) a_ack!1842))))
  (fp.eq (fp.add roundNearestTiesToEven
                 (fp.sub roundNearestTiesToEven
                         a!1
                         ((_ to_fp 11 53) b_ack!1838))
                 ((_ to_fp 11 53) b_ack!1838))
         a!1)))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4000000000000000)
                           ((_ to_fp 11 53) c_ack!1839))
                   ((_ to_fp 11 53) a_ack!1842))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 a!1
                 (fp.sub roundNearestTiesToEven
                         a!1
                         ((_ to_fp 11 53) b_ack!1838)))
         ((_ to_fp 11 53) b_ack!1838))))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4000000000000000)
                                   ((_ to_fp 11 53) c_ack!1839))
                           ((_ to_fp 11 53) a_ack!1842))
                   ((_ to_fp 11 53) b_ack!1838))))
(let ((a!2 (fp.abs (fp.div roundNearestTiesToEven
                           a!1
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!1842)
                                   ((_ to_fp 11 53) b_ack!1838))))))
  (not (fp.gt a!2 ((_ to_fp 11 53) #x3ff199999999999a))))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!1842)
                                   ((_ to_fp 11 53) b_ack!1838))))))
  (FPCHECK_FINVALID_LOG a!1 a!1)))

(check-sat)
(exit)
