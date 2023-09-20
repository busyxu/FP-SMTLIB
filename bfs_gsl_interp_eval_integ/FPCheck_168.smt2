(declare-fun x1_ack!1892 () (_ BitVec 64))
(declare-fun x0_ack!1899 () (_ BitVec 64))
(declare-fun x2_ack!1893 () (_ BitVec 64))
(declare-fun b_ack!1898 () (_ BitVec 64))
(declare-fun a_ack!1897 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_ACCURACY ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(declare-fun y0_ack!1894 () (_ BitVec 64))
(declare-fun y1_ack!1895 () (_ BitVec 64))
(declare-fun y2_ack!1896 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!1899) ((_ to_fp 11 53) x1_ack!1892)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!1892) ((_ to_fp 11 53) x2_ack!1893)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1892)
                       ((_ to_fp 11 53) x0_ack!1899))
               ((_ to_fp 11 53) x0_ack!1899))
       ((_ to_fp 11 53) x1_ack!1892)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!1892)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1892)
                       ((_ to_fp 11 53) x0_ack!1899)))
       ((_ to_fp 11 53) x0_ack!1899)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!1893)
                       ((_ to_fp 11 53) x1_ack!1892))
               ((_ to_fp 11 53) x1_ack!1892))
       ((_ to_fp 11 53) x2_ack!1893)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!1893)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!1893)
                       ((_ to_fp 11 53) x1_ack!1892)))
       ((_ to_fp 11 53) x1_ack!1892)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!1892)
                    ((_ to_fp 11 53) x0_ack!1899))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!1893)
                    ((_ to_fp 11 53) x1_ack!1892))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!1897) ((_ to_fp 11 53) b_ack!1898))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!1897) ((_ to_fp 11 53) x0_ack!1899))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!1898) ((_ to_fp 11 53) x2_ack!1893))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!1897) ((_ to_fp 11 53) b_ack!1898))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!1897) ((_ to_fp 11 53) x0_ack!1899))))
(assert (not (fp.geq ((_ to_fp 11 53) a_ack!1897) ((_ to_fp 11 53) x1_ack!1892))))
(assert (fp.lt ((_ to_fp 11 53) b_ack!1898) ((_ to_fp 11 53) x0_ack!1899)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!1892)
                    ((_ to_fp 11 53) x0_ack!1899))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.eq (fp.abs (fp.sub roundNearestTiesToEven
                                  ((_ to_fp 11 53) b_ack!1898)
                                  ((_ to_fp 11 53) x0_ack!1899)))
                  ((_ to_fp 11 53) #x0000000000000000))))
  (not a!1)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!1898)
                                   ((_ to_fp 11 53) x0_ack!1899))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!1898)
                                   ((_ to_fp 11 53) x0_ack!1899)))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!1898)
                           ((_ to_fp 11 53) x0_ack!1899)))))
  (fp.eq a!1
         (fp.sub roundNearestTiesToEven
                 ((_ to_fp 11 53) b_ack!1898)
                 ((_ to_fp 11 53) x0_ack!1899)))))
(assert (let ((a!1 (fp.eq (fp.abs (fp.sub roundNearestTiesToEven
                                  ((_ to_fp 11 53) b_ack!1898)
                                  ((_ to_fp 11 53) x0_ack!1899)))
                  ((_ to_fp 11 53) #x0000000000000000))))
  (not a!1)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!1898)
                                   ((_ to_fp 11 53) x0_ack!1899))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!1898)
                                   ((_ to_fp 11 53) x0_ack!1899)))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!1898)
                           ((_ to_fp 11 53) x0_ack!1899)))))
  (fp.eq a!1
         (fp.sub roundNearestTiesToEven
                 ((_ to_fp 11 53) b_ack!1898)
                 ((_ to_fp 11 53) x0_ack!1899)))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y2_ack!1896)
                           ((_ to_fp 11 53) y1_ack!1895))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!1893)
                                   ((_ to_fp 11 53) x1_ack!1892)))))
      (a!2 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y1_ack!1895)
                           ((_ to_fp 11 53) y0_ack!1894))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!1892)
                                   ((_ to_fp 11 53) x0_ack!1899)))))
      (a!3 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   (fp.add roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!1893)
                                   ((_ to_fp 11 53) x1_ack!1892))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!1892)
                                   ((_ to_fp 11 53) x0_ack!1899))))))
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
                                   ((_ to_fp 11 53) x1_ack!1892)
                                   ((_ to_fp 11 53) x0_ack!1899))
                           a!4)
                   ((_ to_fp 11 53) #x4008000000000000))))
(let ((a!6 (fp.sub roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) y1_ack!1895)
                                   ((_ to_fp 11 53) y0_ack!1894))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!1892)
                                   ((_ to_fp 11 53) x0_ack!1899)))
                   a!5)))
(let ((a!7 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           a!6)
                   (fp.add roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!1897)
                                   ((_ to_fp 11 53) x0_ack!1899))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!1898)
                                   ((_ to_fp 11 53) x0_ack!1899))))))
  (FPCHECK_FADD_ACCURACY y0_ack!1894 a!7)))))))

(check-sat)
(exit)
