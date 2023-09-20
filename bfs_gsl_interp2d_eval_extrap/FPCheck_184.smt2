(declare-fun x1_ack!1842 () (_ BitVec 64))
(declare-fun x0_ack!1847 () (_ BitVec 64))
(declare-fun y0_ack!1843 () (_ BitVec 64))
(declare-fun x_ack!1845 () (_ BitVec 64))
(declare-fun y_ack!1846 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_OVERFLOW ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(declare-fun z0_ack!1844 () (_ BitVec 64))
(assert (not (fp.geq ((_ to_fp 11 53) x0_ack!1847) ((_ to_fp 11 53) x1_ack!1842))))
(assert (not (fp.geq ((_ to_fp 11 53) y0_ack!1843) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!1845) ((_ to_fp 11 53) x0_ack!1847))))
(assert (fp.geq ((_ to_fp 11 53) x_ack!1845) ((_ to_fp 11 53) x1_ack!1842)))
(assert (not (fp.lt ((_ to_fp 11 53) y_ack!1846) ((_ to_fp 11 53) y0_ack!1843))))
(assert (not (fp.geq ((_ to_fp 11 53) y_ack!1846) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1842)
                       ((_ to_fp 11 53) x0_ack!1847))
               ((_ to_fp 11 53) x0_ack!1847))
       ((_ to_fp 11 53) x1_ack!1842)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!1842)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1842)
                       ((_ to_fp 11 53) x0_ack!1847)))
       ((_ to_fp 11 53) x0_ack!1847)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) y_ack!1846)
                       ((_ to_fp 11 53) y0_ack!1843))
               ((_ to_fp 11 53) y0_ack!1843))
       ((_ to_fp 11 53) y_ack!1846)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) y_ack!1846)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) y_ack!1846)
                       ((_ to_fp 11 53) y0_ack!1843)))
       ((_ to_fp 11 53) y0_ack!1843)))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x_ack!1845)
                                   ((_ to_fp 11 53) x0_ack!1847))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!1842)
                                   ((_ to_fp 11 53) x0_ack!1847)))))
      (a!2 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) y_ack!1846)
                                   ((_ to_fp 11 53) y0_ack!1843))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   ((_ to_fp 11 53) y0_ack!1843))))))
  (FPCHECK_FMUL_OVERFLOW (fp.mul roundNearestTiesToEven a!1 a!2) z0_ack!1844)))

(check-sat)
(exit)
