(declare-fun x1_ack!1824 () (_ BitVec 64))
(declare-fun x0_ack!1831 () (_ BitVec 64))
(declare-fun x2_ack!1825 () (_ BitVec 64))
(declare-fun b_ack!1830 () (_ BitVec 64))
(declare-fun a_ack!1829 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_ACCURACY
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(declare-fun y0_ack!1826 () (_ BitVec 64))
(declare-fun y1_ack!1827 () (_ BitVec 64))
(declare-fun y2_ack!1828 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!1831) ((_ to_fp 11 53) x1_ack!1824)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!1824) ((_ to_fp 11 53) x2_ack!1825)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1824)
                       ((_ to_fp 11 53) x0_ack!1831))
               ((_ to_fp 11 53) x0_ack!1831))
       ((_ to_fp 11 53) x1_ack!1824)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!1824)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1824)
                       ((_ to_fp 11 53) x0_ack!1831)))
       ((_ to_fp 11 53) x0_ack!1831)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!1825)
                       ((_ to_fp 11 53) x1_ack!1824))
               ((_ to_fp 11 53) x1_ack!1824))
       ((_ to_fp 11 53) x2_ack!1825)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!1825)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!1825)
                       ((_ to_fp 11 53) x1_ack!1824)))
       ((_ to_fp 11 53) x1_ack!1824)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!1824)
                    ((_ to_fp 11 53) x0_ack!1831))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!1825)
                    ((_ to_fp 11 53) x1_ack!1824))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!1829) ((_ to_fp 11 53) b_ack!1830))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!1829) ((_ to_fp 11 53) x0_ack!1831))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!1830) ((_ to_fp 11 53) x2_ack!1825))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!1829) ((_ to_fp 11 53) b_ack!1830))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!1829) ((_ to_fp 11 53) x0_ack!1831))))
(assert (not (fp.geq ((_ to_fp 11 53) a_ack!1829) ((_ to_fp 11 53) x1_ack!1824))))
(assert (fp.lt ((_ to_fp 11 53) b_ack!1830) ((_ to_fp 11 53) x0_ack!1831)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!1824)
                    ((_ to_fp 11 53) x0_ack!1831))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.eq (fp.abs (fp.sub roundNearestTiesToEven
                                  ((_ to_fp 11 53) b_ack!1830)
                                  ((_ to_fp 11 53) x0_ack!1831)))
                  ((_ to_fp 11 53) #x0000000000000000))))
  (not a!1)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!1830)
                                   ((_ to_fp 11 53) x0_ack!1831))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!1830)
                                   ((_ to_fp 11 53) x0_ack!1831)))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!1830)
                           ((_ to_fp 11 53) x0_ack!1831)))))
  (fp.eq a!1
         (fp.sub roundNearestTiesToEven
                 ((_ to_fp 11 53) b_ack!1830)
                 ((_ to_fp 11 53) x0_ack!1831)))))
(assert (let ((a!1 (fp.eq (fp.abs (fp.sub roundNearestTiesToEven
                                  ((_ to_fp 11 53) b_ack!1830)
                                  ((_ to_fp 11 53) x0_ack!1831)))
                  ((_ to_fp 11 53) #x0000000000000000))))
  (not a!1)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!1830)
                                   ((_ to_fp 11 53) x0_ack!1831))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!1830)
                                   ((_ to_fp 11 53) x0_ack!1831)))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!1830)
                           ((_ to_fp 11 53) x0_ack!1831)))))
  (fp.eq a!1
         (fp.sub roundNearestTiesToEven
                 ((_ to_fp 11 53) b_ack!1830)
                 ((_ to_fp 11 53) x0_ack!1831)))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y2_ack!1828)
                           ((_ to_fp 11 53) y1_ack!1827))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!1825)
                                   ((_ to_fp 11 53) x1_ack!1824)))))
      (a!2 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y1_ack!1827)
                           ((_ to_fp 11 53) y0_ack!1826))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!1824)
                                   ((_ to_fp 11 53) x0_ack!1831)))))
      (a!3 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   (fp.add roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!1825)
                                   ((_ to_fp 11 53) x1_ack!1824))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!1824)
                                   ((_ to_fp 11 53) x0_ack!1831)))))
      (a!7 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!1829)
                                   ((_ to_fp 11 53) x0_ack!1831))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!1829)
                                   ((_ to_fp 11 53) x0_ack!1831)))
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!1830)
                                   ((_ to_fp 11 53) x0_ack!1831))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!1830)
                                   ((_ to_fp 11 53) x0_ack!1831))))))
(let ((a!4 (fp.sub roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4008000000000000)
                                   (fp.sub roundNearestTiesToEven a!1 a!2))
                           a!3)
                   ((_ to_fp 11 53) #x0000000000000000))))
(let ((a!5 (fp.div roundNearestTiesToEven
                   a!4
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4008000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!1824)
                                   ((_ to_fp 11 53) x0_ack!1831))))))
(let ((a!6 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fd0000000000000)
                           a!5)
                   (fp.add roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!1829)
                                   ((_ to_fp 11 53) x0_ack!1831))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!1830)
                                   ((_ to_fp 11 53) x0_ack!1831))))))
  (FPCHECK_FMUL_ACCURACY a!6 a!7))))))

(check-sat)
(exit)
