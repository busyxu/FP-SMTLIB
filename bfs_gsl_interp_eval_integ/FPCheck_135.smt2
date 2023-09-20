(declare-fun x1_ack!1526 () (_ BitVec 64))
(declare-fun x0_ack!1530 () (_ BitVec 64))
(declare-fun x2_ack!1527 () (_ BitVec 64))
(declare-fun b_ack!1529 () (_ BitVec 64))
(declare-fun a_ack!1528 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (fp.lt ((_ to_fp 11 53) x0_ack!1530) ((_ to_fp 11 53) x1_ack!1526)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!1526) ((_ to_fp 11 53) x2_ack!1527)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1526)
                       ((_ to_fp 11 53) x0_ack!1530))
               ((_ to_fp 11 53) x0_ack!1530))
       ((_ to_fp 11 53) x1_ack!1526)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!1526)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1526)
                       ((_ to_fp 11 53) x0_ack!1530)))
       ((_ to_fp 11 53) x0_ack!1530)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!1527)
                       ((_ to_fp 11 53) x1_ack!1526))
               ((_ to_fp 11 53) x1_ack!1526))
       ((_ to_fp 11 53) x2_ack!1527)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!1527)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!1527)
                       ((_ to_fp 11 53) x1_ack!1526)))
       ((_ to_fp 11 53) x1_ack!1526)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!1526)
                    ((_ to_fp 11 53) x0_ack!1530))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!1527)
                    ((_ to_fp 11 53) x1_ack!1526))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!1528) ((_ to_fp 11 53) b_ack!1529))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!1528) ((_ to_fp 11 53) x0_ack!1530))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!1529) ((_ to_fp 11 53) x2_ack!1527))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!1528) ((_ to_fp 11 53) b_ack!1529))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!1528) ((_ to_fp 11 53) x0_ack!1530))))
(assert (not (fp.geq ((_ to_fp 11 53) a_ack!1528) ((_ to_fp 11 53) x1_ack!1526))))
(assert (fp.lt ((_ to_fp 11 53) b_ack!1529) ((_ to_fp 11 53) x0_ack!1530)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!1526)
                    ((_ to_fp 11 53) x0_ack!1530))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.eq (fp.abs (fp.sub roundNearestTiesToEven
                                  ((_ to_fp 11 53) b_ack!1529)
                                  ((_ to_fp 11 53) x0_ack!1530)))
                  ((_ to_fp 11 53) #x0000000000000000))))
  (not a!1)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!1529)
                                   ((_ to_fp 11 53) x0_ack!1530))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!1529)
                                   ((_ to_fp 11 53) x0_ack!1530)))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!1529)
                           ((_ to_fp 11 53) x0_ack!1530)))))
  (fp.eq a!1
         (fp.sub roundNearestTiesToEven
                 ((_ to_fp 11 53) b_ack!1529)
                 ((_ to_fp 11 53) x0_ack!1530)))))
(assert (let ((a!1 (fp.eq (fp.abs (fp.sub roundNearestTiesToEven
                                  ((_ to_fp 11 53) b_ack!1529)
                                  ((_ to_fp 11 53) x0_ack!1530)))
                  ((_ to_fp 11 53) #x0000000000000000))))
  (not a!1)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!1529)
                                   ((_ to_fp 11 53) x0_ack!1530))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!1529)
                                   ((_ to_fp 11 53) x0_ack!1530)))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!1529)
                           ((_ to_fp 11 53) x0_ack!1530)))))
  (fp.eq a!1
         (fp.sub roundNearestTiesToEven
                 ((_ to_fp 11 53) b_ack!1529)
                 ((_ to_fp 11 53) x0_ack!1530)))))
(assert (FPCHECK_FADD_UNDERFLOW
  (fp.mul roundNearestTiesToEven
          (fp.sub roundNearestTiesToEven
                  ((_ to_fp 11 53) a_ack!1528)
                  ((_ to_fp 11 53) x0_ack!1530))
          (fp.sub roundNearestTiesToEven
                  ((_ to_fp 11 53) a_ack!1528)
                  ((_ to_fp 11 53) x0_ack!1530)))
  (fp.mul roundNearestTiesToEven
          (fp.sub roundNearestTiesToEven
                  ((_ to_fp 11 53) b_ack!1529)
                  ((_ to_fp 11 53) x0_ack!1530))
          (fp.sub roundNearestTiesToEven
                  ((_ to_fp 11 53) b_ack!1529)
                  ((_ to_fp 11 53) x0_ack!1530)))))

(check-sat)
(exit)
