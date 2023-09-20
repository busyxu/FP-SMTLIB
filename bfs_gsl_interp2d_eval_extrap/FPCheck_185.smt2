(declare-fun x1_ack!1854 () (_ BitVec 64))
(declare-fun x0_ack!1859 () (_ BitVec 64))
(declare-fun y0_ack!1855 () (_ BitVec 64))
(declare-fun x_ack!1857 () (_ BitVec 64))
(declare-fun y_ack!1858 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ BitVec 64))
             Bool)
(declare-fun z0_ack!1856 () (_ BitVec 64))
(assert (not (fp.geq ((_ to_fp 11 53) x0_ack!1859) ((_ to_fp 11 53) x1_ack!1854))))
(assert (not (fp.geq ((_ to_fp 11 53) y0_ack!1855) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!1857) ((_ to_fp 11 53) x0_ack!1859))))
(assert (fp.geq ((_ to_fp 11 53) x_ack!1857) ((_ to_fp 11 53) x1_ack!1854)))
(assert (not (fp.lt ((_ to_fp 11 53) y_ack!1858) ((_ to_fp 11 53) y0_ack!1855))))
(assert (not (fp.geq ((_ to_fp 11 53) y_ack!1858) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1854)
                       ((_ to_fp 11 53) x0_ack!1859))
               ((_ to_fp 11 53) x0_ack!1859))
       ((_ to_fp 11 53) x1_ack!1854)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!1854)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1854)
                       ((_ to_fp 11 53) x0_ack!1859)))
       ((_ to_fp 11 53) x0_ack!1859)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) y_ack!1858)
                       ((_ to_fp 11 53) y0_ack!1855))
               ((_ to_fp 11 53) y0_ack!1855))
       ((_ to_fp 11 53) y_ack!1858)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) y_ack!1858)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) y_ack!1858)
                       ((_ to_fp 11 53) y0_ack!1855)))
       ((_ to_fp 11 53) y0_ack!1855)))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x_ack!1857)
                                   ((_ to_fp 11 53) x0_ack!1859))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!1854)
                                   ((_ to_fp 11 53) x0_ack!1859)))))
      (a!2 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) y_ack!1858)
                                   ((_ to_fp 11 53) y0_ack!1855))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   ((_ to_fp 11 53) y0_ack!1855))))))
  (FPCHECK_FMUL_UNDERFLOW (fp.mul roundNearestTiesToEven a!1 a!2) z0_ack!1856)))

(check-sat)
(exit)
