(declare-fun x1_ack!1752 () (_ BitVec 64))
(declare-fun x0_ack!1756 () (_ BitVec 64))
(declare-fun x2_ack!1753 () (_ BitVec 64))
(declare-fun b_ack!1755 () (_ BitVec 64))
(declare-fun a_ack!1754 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (fp.lt ((_ to_fp 11 53) x0_ack!1756) ((_ to_fp 11 53) x1_ack!1752)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!1752) ((_ to_fp 11 53) x2_ack!1753)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1752)
                       ((_ to_fp 11 53) x0_ack!1756))
               ((_ to_fp 11 53) x0_ack!1756))
       ((_ to_fp 11 53) x1_ack!1752)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!1752)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1752)
                       ((_ to_fp 11 53) x0_ack!1756)))
       ((_ to_fp 11 53) x0_ack!1756)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!1753)
                       ((_ to_fp 11 53) x1_ack!1752))
               ((_ to_fp 11 53) x1_ack!1752))
       ((_ to_fp 11 53) x2_ack!1753)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!1753)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!1753)
                       ((_ to_fp 11 53) x1_ack!1752)))
       ((_ to_fp 11 53) x1_ack!1752)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!1752)
                    ((_ to_fp 11 53) x0_ack!1756))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!1753)
                    ((_ to_fp 11 53) x1_ack!1752))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!1754) ((_ to_fp 11 53) b_ack!1755))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!1754) ((_ to_fp 11 53) x0_ack!1756))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!1755) ((_ to_fp 11 53) x2_ack!1753))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!1754) ((_ to_fp 11 53) b_ack!1755))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!1754) ((_ to_fp 11 53) x0_ack!1756))))
(assert (not (fp.geq ((_ to_fp 11 53) a_ack!1754) ((_ to_fp 11 53) x1_ack!1752))))
(assert (fp.lt ((_ to_fp 11 53) b_ack!1755) ((_ to_fp 11 53) x0_ack!1756)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!1752)
                    ((_ to_fp 11 53) x0_ack!1756))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.eq (fp.abs (fp.sub roundNearestTiesToEven
                                  ((_ to_fp 11 53) b_ack!1755)
                                  ((_ to_fp 11 53) x0_ack!1756)))
                  ((_ to_fp 11 53) #x0000000000000000))))
  (not a!1)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!1755)
                                   ((_ to_fp 11 53) x0_ack!1756))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!1755)
                                   ((_ to_fp 11 53) x0_ack!1756)))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!1755)
                           ((_ to_fp 11 53) x0_ack!1756)))))
  (fp.eq a!1
         (fp.sub roundNearestTiesToEven
                 ((_ to_fp 11 53) b_ack!1755)
                 ((_ to_fp 11 53) x0_ack!1756)))))
(assert (let ((a!1 (fp.eq (fp.abs (fp.sub roundNearestTiesToEven
                                  ((_ to_fp 11 53) b_ack!1755)
                                  ((_ to_fp 11 53) x0_ack!1756)))
                  ((_ to_fp 11 53) #x0000000000000000))))
  (not a!1)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!1755)
                                   ((_ to_fp 11 53) x0_ack!1756))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!1755)
                                   ((_ to_fp 11 53) x0_ack!1756)))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!1755)
                           ((_ to_fp 11 53) x0_ack!1756)))))
  (fp.eq a!1
         (fp.sub roundNearestTiesToEven
                 ((_ to_fp 11 53) b_ack!1755)
                 ((_ to_fp 11 53) x0_ack!1756)))))
(assert (FPCHECK_FMUL_UNDERFLOW
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) b_ack!1755)
          ((_ to_fp 11 53) x0_ack!1756))
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) b_ack!1755)
          ((_ to_fp 11 53) x0_ack!1756))))

(check-sat)
(exit)
