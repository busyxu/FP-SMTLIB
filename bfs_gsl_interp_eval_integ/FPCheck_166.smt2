(declare-fun x1_ack!1860 () (_ BitVec 64))
(declare-fun x0_ack!1867 () (_ BitVec 64))
(declare-fun x2_ack!1861 () (_ BitVec 64))
(declare-fun b_ack!1866 () (_ BitVec 64))
(declare-fun a_ack!1865 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_OVERFLOW ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(declare-fun y0_ack!1862 () (_ BitVec 64))
(declare-fun y1_ack!1863 () (_ BitVec 64))
(declare-fun y2_ack!1864 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!1867) ((_ to_fp 11 53) x1_ack!1860)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!1860) ((_ to_fp 11 53) x2_ack!1861)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1860)
                       ((_ to_fp 11 53) x0_ack!1867))
               ((_ to_fp 11 53) x0_ack!1867))
       ((_ to_fp 11 53) x1_ack!1860)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!1860)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1860)
                       ((_ to_fp 11 53) x0_ack!1867)))
       ((_ to_fp 11 53) x0_ack!1867)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!1861)
                       ((_ to_fp 11 53) x1_ack!1860))
               ((_ to_fp 11 53) x1_ack!1860))
       ((_ to_fp 11 53) x2_ack!1861)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!1861)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!1861)
                       ((_ to_fp 11 53) x1_ack!1860)))
       ((_ to_fp 11 53) x1_ack!1860)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!1860)
                    ((_ to_fp 11 53) x0_ack!1867))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!1861)
                    ((_ to_fp 11 53) x1_ack!1860))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!1865) ((_ to_fp 11 53) b_ack!1866))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!1865) ((_ to_fp 11 53) x0_ack!1867))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!1866) ((_ to_fp 11 53) x2_ack!1861))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!1865) ((_ to_fp 11 53) b_ack!1866))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!1865) ((_ to_fp 11 53) x0_ack!1867))))
(assert (not (fp.geq ((_ to_fp 11 53) a_ack!1865) ((_ to_fp 11 53) x1_ack!1860))))
(assert (fp.lt ((_ to_fp 11 53) b_ack!1866) ((_ to_fp 11 53) x0_ack!1867)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!1860)
                    ((_ to_fp 11 53) x0_ack!1867))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.eq (fp.abs (fp.sub roundNearestTiesToEven
                                  ((_ to_fp 11 53) b_ack!1866)
                                  ((_ to_fp 11 53) x0_ack!1867)))
                  ((_ to_fp 11 53) #x0000000000000000))))
  (not a!1)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!1866)
                                   ((_ to_fp 11 53) x0_ack!1867))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!1866)
                                   ((_ to_fp 11 53) x0_ack!1867)))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!1866)
                           ((_ to_fp 11 53) x0_ack!1867)))))
  (fp.eq a!1
         (fp.sub roundNearestTiesToEven
                 ((_ to_fp 11 53) b_ack!1866)
                 ((_ to_fp 11 53) x0_ack!1867)))))
(assert (let ((a!1 (fp.eq (fp.abs (fp.sub roundNearestTiesToEven
                                  ((_ to_fp 11 53) b_ack!1866)
                                  ((_ to_fp 11 53) x0_ack!1867)))
                  ((_ to_fp 11 53) #x0000000000000000))))
  (not a!1)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!1866)
                                   ((_ to_fp 11 53) x0_ack!1867))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!1866)
                                   ((_ to_fp 11 53) x0_ack!1867)))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!1866)
                           ((_ to_fp 11 53) x0_ack!1867)))))
  (fp.eq a!1
         (fp.sub roundNearestTiesToEven
                 ((_ to_fp 11 53) b_ack!1866)
                 ((_ to_fp 11 53) x0_ack!1867)))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y2_ack!1864)
                           ((_ to_fp 11 53) y1_ack!1863))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!1861)
                                   ((_ to_fp 11 53) x1_ack!1860)))))
      (a!2 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y1_ack!1863)
                           ((_ to_fp 11 53) y0_ack!1862))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!1860)
                                   ((_ to_fp 11 53) x0_ack!1867)))))
      (a!3 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   (fp.add roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!1861)
                                   ((_ to_fp 11 53) x1_ack!1860))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!1860)
                                   ((_ to_fp 11 53) x0_ack!1867))))))
(let ((a!4 (fp.add roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4008000000000000)
                                   (fp.sub roundNearestTiesToEven a!1 a!2))
                           a!3)
                   ((_ to_fp 11 53) #x0000000000000000))))
(let ((a!5 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!1860)
                                   ((_ to_fp 11 53) x0_ack!1867))
                           a!4)
                   ((_ to_fp 11 53) #x4008000000000000))))
(let ((a!6 (fp.sub roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) y1_ack!1863)
                                   ((_ to_fp 11 53) y0_ack!1862))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!1860)
                                   ((_ to_fp 11 53) x0_ack!1867)))
                   a!5)))
(let ((a!7 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           a!6)
                   (fp.add roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!1865)
                                   ((_ to_fp 11 53) x0_ack!1867))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!1866)
                                   ((_ to_fp 11 53) x0_ack!1867))))))
  (FPCHECK_FADD_OVERFLOW y0_ack!1862 a!7)))))))

(check-sat)
(exit)
