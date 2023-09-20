(declare-fun x1_ack!1831 () (_ BitVec 64))
(declare-fun x0_ack!1838 () (_ BitVec 64))
(declare-fun x2_ack!1832 () (_ BitVec 64))
(declare-fun b_ack!1837 () (_ BitVec 64))
(declare-fun a_ack!1836 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_OVERFLOW ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(declare-fun y0_ack!1833 () (_ BitVec 64))
(declare-fun y1_ack!1834 () (_ BitVec 64))
(declare-fun y2_ack!1835 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!1838) ((_ to_fp 11 53) x1_ack!1831)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!1831) ((_ to_fp 11 53) x2_ack!1832)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1831)
                       ((_ to_fp 11 53) x0_ack!1838))
               ((_ to_fp 11 53) x0_ack!1838))
       ((_ to_fp 11 53) x1_ack!1831)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!1831)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1831)
                       ((_ to_fp 11 53) x0_ack!1838)))
       ((_ to_fp 11 53) x0_ack!1838)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!1832)
                       ((_ to_fp 11 53) x1_ack!1831))
               ((_ to_fp 11 53) x1_ack!1831))
       ((_ to_fp 11 53) x2_ack!1832)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!1832)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!1832)
                       ((_ to_fp 11 53) x1_ack!1831)))
       ((_ to_fp 11 53) x1_ack!1831)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!1831)
                    ((_ to_fp 11 53) x0_ack!1838))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!1832)
                    ((_ to_fp 11 53) x1_ack!1831))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!1836) ((_ to_fp 11 53) b_ack!1837))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!1836) ((_ to_fp 11 53) x0_ack!1838))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!1837) ((_ to_fp 11 53) x2_ack!1832))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!1836) ((_ to_fp 11 53) b_ack!1837))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!1836) ((_ to_fp 11 53) x0_ack!1838))))
(assert (not (fp.geq ((_ to_fp 11 53) a_ack!1836) ((_ to_fp 11 53) x1_ack!1831))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!1837) ((_ to_fp 11 53) x0_ack!1838))))
(assert (fp.geq ((_ to_fp 11 53) b_ack!1837) ((_ to_fp 11 53) x1_ack!1831)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!1831) ((_ to_fp 11 53) b_ack!1837))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!1831)
                    ((_ to_fp 11 53) x0_ack!1838))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!1832)
                    ((_ to_fp 11 53) x1_ack!1831))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y2_ack!1835)
                           ((_ to_fp 11 53) y1_ack!1834))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!1832)
                                   ((_ to_fp 11 53) x1_ack!1831)))))
      (a!2 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y1_ack!1834)
                           ((_ to_fp 11 53) y0_ack!1833))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!1831)
                                   ((_ to_fp 11 53) x0_ack!1838)))))
      (a!3 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   (fp.add roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!1832)
                                   ((_ to_fp 11 53) x1_ack!1831))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!1831)
                                   ((_ to_fp 11 53) x0_ack!1838))))))
  (FPCHECK_FMUL_OVERFLOW
    #x4000000000000000
    (fp.div roundNearestTiesToEven
            (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x4008000000000000)
                    (fp.sub roundNearestTiesToEven a!1 a!2))
            a!3))))

(check-sat)
(exit)
