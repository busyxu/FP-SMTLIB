(declare-fun x1_ack!1591 () (_ BitVec 64))
(declare-fun x0_ack!1595 () (_ BitVec 64))
(declare-fun x2_ack!1592 () (_ BitVec 64))
(declare-fun b_ack!1594 () (_ BitVec 64))
(declare-fun a_ack!1593 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_ACCURACY
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (fp.lt ((_ to_fp 11 53) x0_ack!1595) ((_ to_fp 11 53) x1_ack!1591)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!1591) ((_ to_fp 11 53) x2_ack!1592)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1591)
                       ((_ to_fp 11 53) x0_ack!1595))
               ((_ to_fp 11 53) x0_ack!1595))
       ((_ to_fp 11 53) x1_ack!1591)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!1591)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1591)
                       ((_ to_fp 11 53) x0_ack!1595)))
       ((_ to_fp 11 53) x0_ack!1595)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!1592)
                       ((_ to_fp 11 53) x1_ack!1591))
               ((_ to_fp 11 53) x1_ack!1591))
       ((_ to_fp 11 53) x2_ack!1592)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!1592)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!1592)
                       ((_ to_fp 11 53) x1_ack!1591)))
       ((_ to_fp 11 53) x1_ack!1591)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!1591)
                    ((_ to_fp 11 53) x0_ack!1595))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!1592)
                    ((_ to_fp 11 53) x1_ack!1591))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!1593) ((_ to_fp 11 53) b_ack!1594))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!1593) ((_ to_fp 11 53) x0_ack!1595))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!1594) ((_ to_fp 11 53) x2_ack!1592))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!1593) ((_ to_fp 11 53) b_ack!1594))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!1593) ((_ to_fp 11 53) x0_ack!1595))))
(assert (not (fp.geq ((_ to_fp 11 53) a_ack!1593) ((_ to_fp 11 53) x1_ack!1591))))
(assert (fp.lt ((_ to_fp 11 53) b_ack!1594) ((_ to_fp 11 53) x0_ack!1595)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!1591)
                    ((_ to_fp 11 53) x0_ack!1595))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.eq (fp.abs (fp.sub roundNearestTiesToEven
                                  ((_ to_fp 11 53) b_ack!1594)
                                  ((_ to_fp 11 53) x0_ack!1595)))
                  ((_ to_fp 11 53) #x0000000000000000))))
  (not a!1)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!1594)
                                   ((_ to_fp 11 53) x0_ack!1595))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!1594)
                                   ((_ to_fp 11 53) x0_ack!1595)))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!1594)
                           ((_ to_fp 11 53) x0_ack!1595)))))
  (fp.eq a!1
         (fp.sub roundNearestTiesToEven
                 ((_ to_fp 11 53) b_ack!1594)
                 ((_ to_fp 11 53) x0_ack!1595)))))
(assert (let ((a!1 (fp.eq (fp.abs (fp.sub roundNearestTiesToEven
                                  ((_ to_fp 11 53) b_ack!1594)
                                  ((_ to_fp 11 53) x0_ack!1595)))
                  ((_ to_fp 11 53) #x0000000000000000))))
  (not a!1)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!1594)
                                   ((_ to_fp 11 53) x0_ack!1595))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!1594)
                                   ((_ to_fp 11 53) x0_ack!1595)))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!1594)
                           ((_ to_fp 11 53) x0_ack!1595)))))
  (fp.eq a!1
         (fp.sub roundNearestTiesToEven
                 ((_ to_fp 11 53) b_ack!1594)
                 ((_ to_fp 11 53) x0_ack!1595)))))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!1593)
                                   ((_ to_fp 11 53) x0_ack!1595))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!1593)
                                   ((_ to_fp 11 53) x0_ack!1595)))
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!1594)
                                   ((_ to_fp 11 53) x0_ack!1595))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!1594)
                                   ((_ to_fp 11 53) x0_ack!1595))))))
  (FPCHECK_FADD_ACCURACY
    a!1
    (fp.mul roundNearestTiesToEven
            (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) a_ack!1593)
                    ((_ to_fp 11 53) x0_ack!1595))
            (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) b_ack!1594)
                    ((_ to_fp 11 53) x0_ack!1595))))))

(check-sat)
(exit)
