(declare-fun x1_ack!1601 () (_ BitVec 64))
(declare-fun x0_ack!1605 () (_ BitVec 64))
(declare-fun x2_ack!1602 () (_ BitVec 64))
(declare-fun b_ack!1604 () (_ BitVec 64))
(declare-fun a_ack!1603 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_UNDERFLOW
             ((_ BitVec 64) (_ FloatingPoint 11 53))
             Bool)
(assert (fp.lt ((_ to_fp 11 53) x0_ack!1605) ((_ to_fp 11 53) x1_ack!1601)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!1601) ((_ to_fp 11 53) x2_ack!1602)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1601)
                       ((_ to_fp 11 53) x0_ack!1605))
               ((_ to_fp 11 53) x0_ack!1605))
       ((_ to_fp 11 53) x1_ack!1601)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!1601)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1601)
                       ((_ to_fp 11 53) x0_ack!1605)))
       ((_ to_fp 11 53) x0_ack!1605)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!1602)
                       ((_ to_fp 11 53) x1_ack!1601))
               ((_ to_fp 11 53) x1_ack!1601))
       ((_ to_fp 11 53) x2_ack!1602)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!1602)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!1602)
                       ((_ to_fp 11 53) x1_ack!1601)))
       ((_ to_fp 11 53) x1_ack!1601)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!1601)
                    ((_ to_fp 11 53) x0_ack!1605))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!1602)
                    ((_ to_fp 11 53) x1_ack!1601))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!1603) ((_ to_fp 11 53) b_ack!1604))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!1603) ((_ to_fp 11 53) x0_ack!1605))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!1604) ((_ to_fp 11 53) x2_ack!1602))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!1603) ((_ to_fp 11 53) b_ack!1604))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!1603) ((_ to_fp 11 53) x0_ack!1605))))
(assert (not (fp.geq ((_ to_fp 11 53) a_ack!1603) ((_ to_fp 11 53) x1_ack!1601))))
(assert (fp.lt ((_ to_fp 11 53) b_ack!1604) ((_ to_fp 11 53) x0_ack!1605)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!1601)
                    ((_ to_fp 11 53) x0_ack!1605))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.eq (fp.abs (fp.sub roundNearestTiesToEven
                                  ((_ to_fp 11 53) b_ack!1604)
                                  ((_ to_fp 11 53) x0_ack!1605)))
                  ((_ to_fp 11 53) #x0000000000000000))))
  (not a!1)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!1604)
                                   ((_ to_fp 11 53) x0_ack!1605))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!1604)
                                   ((_ to_fp 11 53) x0_ack!1605)))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!1604)
                           ((_ to_fp 11 53) x0_ack!1605)))))
  (fp.eq a!1
         (fp.sub roundNearestTiesToEven
                 ((_ to_fp 11 53) b_ack!1604)
                 ((_ to_fp 11 53) x0_ack!1605)))))
(assert (let ((a!1 (fp.eq (fp.abs (fp.sub roundNearestTiesToEven
                                  ((_ to_fp 11 53) b_ack!1604)
                                  ((_ to_fp 11 53) x0_ack!1605)))
                  ((_ to_fp 11 53) #x0000000000000000))))
  (not a!1)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!1604)
                                   ((_ to_fp 11 53) x0_ack!1605))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!1604)
                                   ((_ to_fp 11 53) x0_ack!1605)))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!1604)
                           ((_ to_fp 11 53) x0_ack!1605)))))
  (fp.eq a!1
         (fp.sub roundNearestTiesToEven
                 ((_ to_fp 11 53) b_ack!1604)
                 ((_ to_fp 11 53) x0_ack!1605)))))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!1603)
                                   ((_ to_fp 11 53) x0_ack!1605))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!1603)
                                   ((_ to_fp 11 53) x0_ack!1605)))
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!1604)
                                   ((_ to_fp 11 53) x0_ack!1605))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!1604)
                                   ((_ to_fp 11 53) x0_ack!1605))))))
(let ((a!2 (fp.add roundNearestTiesToEven
                   a!1
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!1603)
                                   ((_ to_fp 11 53) x0_ack!1605))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!1604)
                                   ((_ to_fp 11 53) x0_ack!1605))))))
  (FPCHECK_FMUL_UNDERFLOW #x0000000000000000 a!2))))

(check-sat)
(exit)
