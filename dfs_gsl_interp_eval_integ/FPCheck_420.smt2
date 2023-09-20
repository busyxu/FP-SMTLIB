(declare-fun x1_ack!5189 () (_ BitVec 64))
(declare-fun x0_ack!5193 () (_ BitVec 64))
(declare-fun x2_ack!5190 () (_ BitVec 64))
(declare-fun b_ack!5192 () (_ BitVec 64))
(declare-fun a_ack!5191 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_OVERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (fp.lt ((_ to_fp 11 53) x0_ack!5193) ((_ to_fp 11 53) x1_ack!5189)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!5189) ((_ to_fp 11 53) x2_ack!5190)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!5189)
                       ((_ to_fp 11 53) x0_ack!5193))
               ((_ to_fp 11 53) x0_ack!5193))
       ((_ to_fp 11 53) x1_ack!5189)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!5189)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!5189)
                       ((_ to_fp 11 53) x0_ack!5193)))
       ((_ to_fp 11 53) x0_ack!5193)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!5190)
                       ((_ to_fp 11 53) x1_ack!5189))
               ((_ to_fp 11 53) x1_ack!5189))
       ((_ to_fp 11 53) x2_ack!5190)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!5190)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!5190)
                       ((_ to_fp 11 53) x1_ack!5189)))
       ((_ to_fp 11 53) x1_ack!5189)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!5189)
                    ((_ to_fp 11 53) x0_ack!5193))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!5190)
                    ((_ to_fp 11 53) x1_ack!5189))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!5191) ((_ to_fp 11 53) b_ack!5192))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!5191) ((_ to_fp 11 53) x0_ack!5193))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!5192) ((_ to_fp 11 53) x2_ack!5190))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!5191) ((_ to_fp 11 53) b_ack!5192))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!5191) ((_ to_fp 11 53) x0_ack!5193))))
(assert (fp.geq ((_ to_fp 11 53) a_ack!5191) ((_ to_fp 11 53) x1_ack!5189)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!5189) ((_ to_fp 11 53) a_ack!5191))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!5192) ((_ to_fp 11 53) x1_ack!5189))))
(assert (fp.geq ((_ to_fp 11 53) b_ack!5192) ((_ to_fp 11 53) x2_ack!5190)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!5190)
                    ((_ to_fp 11 53) x1_ack!5189))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) a_ack!5191)
                       ((_ to_fp 11 53) x1_ack!5189))
               ((_ to_fp 11 53) x1_ack!5189))
       ((_ to_fp 11 53) a_ack!5191)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) a_ack!5191)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) a_ack!5191)
                       ((_ to_fp 11 53) x1_ack!5189)))
       ((_ to_fp 11 53) x1_ack!5189)))
(assert (let ((a!1 (fp.eq (fp.abs (fp.sub roundNearestTiesToEven
                                  ((_ to_fp 11 53) a_ack!5191)
                                  ((_ to_fp 11 53) x1_ack!5189)))
                  ((_ to_fp 11 53) #x0000000000000000))))
  (not a!1)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!5191)
                                   ((_ to_fp 11 53) x1_ack!5189))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!5191)
                                   ((_ to_fp 11 53) x1_ack!5189)))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) a_ack!5191)
                           ((_ to_fp 11 53) x1_ack!5189)))))
  (fp.eq a!1
         (fp.sub roundNearestTiesToEven
                 ((_ to_fp 11 53) a_ack!5191)
                 ((_ to_fp 11 53) x1_ack!5189)))))
(assert (let ((a!1 (fp.eq (fp.abs (fp.sub roundNearestTiesToEven
                                  ((_ to_fp 11 53) a_ack!5191)
                                  ((_ to_fp 11 53) x1_ack!5189)))
                  ((_ to_fp 11 53) #x0000000000000000))))
  (not a!1)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!5191)
                                   ((_ to_fp 11 53) x1_ack!5189))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!5191)
                                   ((_ to_fp 11 53) x1_ack!5189)))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) a_ack!5191)
                           ((_ to_fp 11 53) x1_ack!5189)))))
  (fp.eq a!1
         (fp.sub roundNearestTiesToEven
                 ((_ to_fp 11 53) a_ack!5191)
                 ((_ to_fp 11 53) x1_ack!5189)))))
(assert (FPCHECK_FMUL_OVERFLOW
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) b_ack!5192)
          ((_ to_fp 11 53) x1_ack!5189))
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) b_ack!5192)
          ((_ to_fp 11 53) x1_ack!5189))))

(check-sat)
(exit)
