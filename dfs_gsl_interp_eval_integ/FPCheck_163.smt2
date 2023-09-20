(declare-fun x1_ack!1847 () (_ BitVec 64))
(declare-fun x0_ack!1854 () (_ BitVec 64))
(declare-fun x2_ack!1848 () (_ BitVec 64))
(declare-fun b_ack!1853 () (_ BitVec 64))
(declare-fun a_ack!1852 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_UNDERFLOW
             ((_ BitVec 64) (_ FloatingPoint 11 53))
             Bool)
(declare-fun y0_ack!1849 () (_ BitVec 64))
(declare-fun y1_ack!1850 () (_ BitVec 64))
(declare-fun y2_ack!1851 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!1854) ((_ to_fp 11 53) x1_ack!1847)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!1847) ((_ to_fp 11 53) x2_ack!1848)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1847)
                       ((_ to_fp 11 53) x0_ack!1854))
               ((_ to_fp 11 53) x0_ack!1854))
       ((_ to_fp 11 53) x1_ack!1847)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!1847)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1847)
                       ((_ to_fp 11 53) x0_ack!1854)))
       ((_ to_fp 11 53) x0_ack!1854)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!1848)
                       ((_ to_fp 11 53) x1_ack!1847))
               ((_ to_fp 11 53) x1_ack!1847))
       ((_ to_fp 11 53) x2_ack!1848)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!1848)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!1848)
                       ((_ to_fp 11 53) x1_ack!1847)))
       ((_ to_fp 11 53) x1_ack!1847)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!1847)
                    ((_ to_fp 11 53) x0_ack!1854))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!1848)
                    ((_ to_fp 11 53) x1_ack!1847))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!1852) ((_ to_fp 11 53) b_ack!1853))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!1852) ((_ to_fp 11 53) x0_ack!1854))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!1853) ((_ to_fp 11 53) x2_ack!1848))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!1852) ((_ to_fp 11 53) b_ack!1853))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!1852) ((_ to_fp 11 53) x0_ack!1854))))
(assert (not (fp.geq ((_ to_fp 11 53) a_ack!1852) ((_ to_fp 11 53) x1_ack!1847))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!1853) ((_ to_fp 11 53) x0_ack!1854))))
(assert (fp.geq ((_ to_fp 11 53) b_ack!1853) ((_ to_fp 11 53) x1_ack!1847)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!1847) ((_ to_fp 11 53) b_ack!1853))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!1847)
                    ((_ to_fp 11 53) x0_ack!1854))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!1848)
                    ((_ to_fp 11 53) x1_ack!1847))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y2_ack!1851)
                           ((_ to_fp 11 53) y1_ack!1850))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!1848)
                                   ((_ to_fp 11 53) x1_ack!1847)))))
      (a!2 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y1_ack!1850)
                           ((_ to_fp 11 53) y0_ack!1849))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!1847)
                                   ((_ to_fp 11 53) x0_ack!1854)))))
      (a!3 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   (fp.add roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!1848)
                                   ((_ to_fp 11 53) x1_ack!1847))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!1847)
                                   ((_ to_fp 11 53) x0_ack!1854))))))
  (FPCHECK_FMUL_UNDERFLOW
    #x4000000000000000
    (fp.div roundNearestTiesToEven
            (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x4008000000000000)
                    (fp.sub roundNearestTiesToEven a!1 a!2))
            a!3))))

(check-sat)
(exit)
