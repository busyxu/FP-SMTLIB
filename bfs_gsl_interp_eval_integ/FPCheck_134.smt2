(declare-fun x1_ack!1516 () (_ BitVec 64))
(declare-fun x0_ack!1520 () (_ BitVec 64))
(declare-fun x2_ack!1517 () (_ BitVec 64))
(declare-fun b_ack!1519 () (_ BitVec 64))
(declare-fun a_ack!1518 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_OVERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (fp.lt ((_ to_fp 11 53) x0_ack!1520) ((_ to_fp 11 53) x1_ack!1516)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!1516) ((_ to_fp 11 53) x2_ack!1517)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1516)
                       ((_ to_fp 11 53) x0_ack!1520))
               ((_ to_fp 11 53) x0_ack!1520))
       ((_ to_fp 11 53) x1_ack!1516)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!1516)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1516)
                       ((_ to_fp 11 53) x0_ack!1520)))
       ((_ to_fp 11 53) x0_ack!1520)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!1517)
                       ((_ to_fp 11 53) x1_ack!1516))
               ((_ to_fp 11 53) x1_ack!1516))
       ((_ to_fp 11 53) x2_ack!1517)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!1517)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!1517)
                       ((_ to_fp 11 53) x1_ack!1516)))
       ((_ to_fp 11 53) x1_ack!1516)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!1516)
                    ((_ to_fp 11 53) x0_ack!1520))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!1517)
                    ((_ to_fp 11 53) x1_ack!1516))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!1518) ((_ to_fp 11 53) b_ack!1519))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!1518) ((_ to_fp 11 53) x0_ack!1520))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!1519) ((_ to_fp 11 53) x2_ack!1517))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!1518) ((_ to_fp 11 53) b_ack!1519))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!1518) ((_ to_fp 11 53) x0_ack!1520))))
(assert (not (fp.geq ((_ to_fp 11 53) a_ack!1518) ((_ to_fp 11 53) x1_ack!1516))))
(assert (fp.lt ((_ to_fp 11 53) b_ack!1519) ((_ to_fp 11 53) x0_ack!1520)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!1516)
                    ((_ to_fp 11 53) x0_ack!1520))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.eq (fp.abs (fp.sub roundNearestTiesToEven
                                  ((_ to_fp 11 53) b_ack!1519)
                                  ((_ to_fp 11 53) x0_ack!1520)))
                  ((_ to_fp 11 53) #x0000000000000000))))
  (not a!1)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!1519)
                                   ((_ to_fp 11 53) x0_ack!1520))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!1519)
                                   ((_ to_fp 11 53) x0_ack!1520)))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!1519)
                           ((_ to_fp 11 53) x0_ack!1520)))))
  (fp.eq a!1
         (fp.sub roundNearestTiesToEven
                 ((_ to_fp 11 53) b_ack!1519)
                 ((_ to_fp 11 53) x0_ack!1520)))))
(assert (let ((a!1 (fp.eq (fp.abs (fp.sub roundNearestTiesToEven
                                  ((_ to_fp 11 53) b_ack!1519)
                                  ((_ to_fp 11 53) x0_ack!1520)))
                  ((_ to_fp 11 53) #x0000000000000000))))
  (not a!1)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!1519)
                                   ((_ to_fp 11 53) x0_ack!1520))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!1519)
                                   ((_ to_fp 11 53) x0_ack!1520)))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!1519)
                           ((_ to_fp 11 53) x0_ack!1520)))))
  (fp.eq a!1
         (fp.sub roundNearestTiesToEven
                 ((_ to_fp 11 53) b_ack!1519)
                 ((_ to_fp 11 53) x0_ack!1520)))))
(assert (FPCHECK_FADD_OVERFLOW
  (fp.mul roundNearestTiesToEven
          (fp.sub roundNearestTiesToEven
                  ((_ to_fp 11 53) a_ack!1518)
                  ((_ to_fp 11 53) x0_ack!1520))
          (fp.sub roundNearestTiesToEven
                  ((_ to_fp 11 53) a_ack!1518)
                  ((_ to_fp 11 53) x0_ack!1520)))
  (fp.mul roundNearestTiesToEven
          (fp.sub roundNearestTiesToEven
                  ((_ to_fp 11 53) b_ack!1519)
                  ((_ to_fp 11 53) x0_ack!1520))
          (fp.sub roundNearestTiesToEven
                  ((_ to_fp 11 53) b_ack!1519)
                  ((_ to_fp 11 53) x0_ack!1520)))))

(check-sat)
(exit)
