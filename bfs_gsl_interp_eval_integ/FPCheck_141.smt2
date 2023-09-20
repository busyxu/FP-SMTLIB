(declare-fun x1_ack!1581 () (_ BitVec 64))
(declare-fun x0_ack!1585 () (_ BitVec 64))
(declare-fun x2_ack!1582 () (_ BitVec 64))
(declare-fun b_ack!1584 () (_ BitVec 64))
(declare-fun a_ack!1583 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (fp.lt ((_ to_fp 11 53) x0_ack!1585) ((_ to_fp 11 53) x1_ack!1581)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!1581) ((_ to_fp 11 53) x2_ack!1582)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1581)
                       ((_ to_fp 11 53) x0_ack!1585))
               ((_ to_fp 11 53) x0_ack!1585))
       ((_ to_fp 11 53) x1_ack!1581)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!1581)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1581)
                       ((_ to_fp 11 53) x0_ack!1585)))
       ((_ to_fp 11 53) x0_ack!1585)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!1582)
                       ((_ to_fp 11 53) x1_ack!1581))
               ((_ to_fp 11 53) x1_ack!1581))
       ((_ to_fp 11 53) x2_ack!1582)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!1582)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!1582)
                       ((_ to_fp 11 53) x1_ack!1581)))
       ((_ to_fp 11 53) x1_ack!1581)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!1581)
                    ((_ to_fp 11 53) x0_ack!1585))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!1582)
                    ((_ to_fp 11 53) x1_ack!1581))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!1583) ((_ to_fp 11 53) b_ack!1584))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!1583) ((_ to_fp 11 53) x0_ack!1585))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!1584) ((_ to_fp 11 53) x2_ack!1582))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!1583) ((_ to_fp 11 53) b_ack!1584))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!1583) ((_ to_fp 11 53) x0_ack!1585))))
(assert (not (fp.geq ((_ to_fp 11 53) a_ack!1583) ((_ to_fp 11 53) x1_ack!1581))))
(assert (fp.lt ((_ to_fp 11 53) b_ack!1584) ((_ to_fp 11 53) x0_ack!1585)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!1581)
                    ((_ to_fp 11 53) x0_ack!1585))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.eq (fp.abs (fp.sub roundNearestTiesToEven
                                  ((_ to_fp 11 53) b_ack!1584)
                                  ((_ to_fp 11 53) x0_ack!1585)))
                  ((_ to_fp 11 53) #x0000000000000000))))
  (not a!1)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!1584)
                                   ((_ to_fp 11 53) x0_ack!1585))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!1584)
                                   ((_ to_fp 11 53) x0_ack!1585)))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!1584)
                           ((_ to_fp 11 53) x0_ack!1585)))))
  (fp.eq a!1
         (fp.sub roundNearestTiesToEven
                 ((_ to_fp 11 53) b_ack!1584)
                 ((_ to_fp 11 53) x0_ack!1585)))))
(assert (let ((a!1 (fp.eq (fp.abs (fp.sub roundNearestTiesToEven
                                  ((_ to_fp 11 53) b_ack!1584)
                                  ((_ to_fp 11 53) x0_ack!1585)))
                  ((_ to_fp 11 53) #x0000000000000000))))
  (not a!1)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!1584)
                                   ((_ to_fp 11 53) x0_ack!1585))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!1584)
                                   ((_ to_fp 11 53) x0_ack!1585)))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!1584)
                           ((_ to_fp 11 53) x0_ack!1585)))))
  (fp.eq a!1
         (fp.sub roundNearestTiesToEven
                 ((_ to_fp 11 53) b_ack!1584)
                 ((_ to_fp 11 53) x0_ack!1585)))))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!1583)
                                   ((_ to_fp 11 53) x0_ack!1585))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!1583)
                                   ((_ to_fp 11 53) x0_ack!1585)))
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!1584)
                                   ((_ to_fp 11 53) x0_ack!1585))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!1584)
                                   ((_ to_fp 11 53) x0_ack!1585))))))
  (FPCHECK_FADD_UNDERFLOW
    a!1
    (fp.mul roundNearestTiesToEven
            (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) a_ack!1583)
                    ((_ to_fp 11 53) x0_ack!1585))
            (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) b_ack!1584)
                    ((_ to_fp 11 53) x0_ack!1585))))))

(check-sat)
(exit)
