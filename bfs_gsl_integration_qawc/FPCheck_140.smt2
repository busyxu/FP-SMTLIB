(declare-fun limit_ack!1821 () (_ BitVec 64))
(declare-fun a_ack!1822 () (_ BitVec 64))
(declare-fun b_ack!1818 () (_ BitVec 64))
(declare-fun epsabs_ack!1820 () (_ BitVec 64))
(declare-fun c_ack!1819 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_ACCURACY ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(assert (not (bvult #x00000000000003e8 limit_ack!1821)))
(assert (fp.lt ((_ to_fp 11 53) b_ack!1818) ((_ to_fp 11 53) a_ack!1822)))
(assert (not (fp.leq ((_ to_fp 11 53) epsabs_ack!1820)
             ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!1819) ((_ to_fp 11 53) a_ack!1822))))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!1819) ((_ to_fp 11 53) b_ack!1818))))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4000000000000000)
                           ((_ to_fp 11 53) c_ack!1819))
                   ((_ to_fp 11 53) a_ack!1822))))
  (fp.eq (fp.add roundNearestTiesToEven
                 (fp.sub roundNearestTiesToEven
                         a!1
                         ((_ to_fp 11 53) b_ack!1818))
                 ((_ to_fp 11 53) b_ack!1818))
         a!1)))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4000000000000000)
                           ((_ to_fp 11 53) c_ack!1819))
                   ((_ to_fp 11 53) a_ack!1822))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 a!1
                 (fp.sub roundNearestTiesToEven
                         a!1
                         ((_ to_fp 11 53) b_ack!1818)))
         ((_ to_fp 11 53) b_ack!1818))))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4000000000000000)
                                   ((_ to_fp 11 53) c_ack!1819))
                           ((_ to_fp 11 53) a_ack!1822))
                   ((_ to_fp 11 53) b_ack!1818))))
(let ((a!2 (fp.abs (fp.div roundNearestTiesToEven
                           a!1
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!1822)
                                   ((_ to_fp 11 53) b_ack!1818))))))
  (not (fp.gt a!2 ((_ to_fp 11 53) #x3ff199999999999a))))))
(assert (FPCHECK_FMUL_ACCURACY
  #x3ff0000000000000
  (fp.mul roundNearestTiesToEven
          ((_ to_fp 11 53) #x3fe0000000000000)
          (fp.add roundNearestTiesToEven
                  ((_ to_fp 11 53) a_ack!1822)
                  ((_ to_fp 11 53) b_ack!1818)))))

(check-sat)
(exit)
