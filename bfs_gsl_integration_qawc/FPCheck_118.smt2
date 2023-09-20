(declare-fun limit_ack!1541 () (_ BitVec 64))
(declare-fun a_ack!1542 () (_ BitVec 64))
(declare-fun b_ack!1538 () (_ BitVec 64))
(declare-fun epsabs_ack!1540 () (_ BitVec 64))
(declare-fun c_ack!1539 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_OVERFLOW ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(assert (not (bvult #x00000000000003e8 limit_ack!1541)))
(assert (fp.lt ((_ to_fp 11 53) b_ack!1538) ((_ to_fp 11 53) a_ack!1542)))
(assert (not (fp.leq ((_ to_fp 11 53) epsabs_ack!1540)
             ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!1539) ((_ to_fp 11 53) a_ack!1542))))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!1539) ((_ to_fp 11 53) b_ack!1538))))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4000000000000000)
                           ((_ to_fp 11 53) c_ack!1539))
                   ((_ to_fp 11 53) a_ack!1542))))
  (fp.eq (fp.add roundNearestTiesToEven
                 (fp.sub roundNearestTiesToEven
                         a!1
                         ((_ to_fp 11 53) b_ack!1538))
                 ((_ to_fp 11 53) b_ack!1538))
         a!1)))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4000000000000000)
                           ((_ to_fp 11 53) c_ack!1539))
                   ((_ to_fp 11 53) a_ack!1542))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 a!1
                 (fp.sub roundNearestTiesToEven
                         a!1
                         ((_ to_fp 11 53) b_ack!1538)))
         ((_ to_fp 11 53) b_ack!1538))))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4000000000000000)
                                   ((_ to_fp 11 53) c_ack!1539))
                           ((_ to_fp 11 53) a_ack!1542))
                   ((_ to_fp 11 53) b_ack!1538))))
(let ((a!2 (fp.abs (fp.div roundNearestTiesToEven
                           a!1
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!1542)
                                   ((_ to_fp 11 53) b_ack!1538))))))
  (not (fp.gt a!2 ((_ to_fp 11 53) #x3ff199999999999a))))))
(assert (FPCHECK_FMUL_OVERFLOW
  #x3fe0000000000000
  (fp.add roundNearestTiesToEven
          ((_ to_fp 11 53) a_ack!1542)
          ((_ to_fp 11 53) b_ack!1538))))

(check-sat)
(exit)
