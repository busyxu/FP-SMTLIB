(declare-fun x1_ack!7917 () (_ BitVec 64))
(declare-fun x0_ack!7921 () (_ BitVec 64))
(declare-fun x2_ack!7918 () (_ BitVec 64))
(declare-fun b_ack!7920 () (_ BitVec 64))
(declare-fun a_ack!7919 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_OVERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (fp.lt ((_ to_fp 11 53) x0_ack!7921) ((_ to_fp 11 53) x1_ack!7917)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!7917) ((_ to_fp 11 53) x2_ack!7918)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!7917)
                       ((_ to_fp 11 53) x0_ack!7921))
               ((_ to_fp 11 53) x0_ack!7921))
       ((_ to_fp 11 53) x1_ack!7917)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!7917)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!7917)
                       ((_ to_fp 11 53) x0_ack!7921)))
       ((_ to_fp 11 53) x0_ack!7921)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!7918)
                       ((_ to_fp 11 53) x1_ack!7917))
               ((_ to_fp 11 53) x1_ack!7917))
       ((_ to_fp 11 53) x2_ack!7918)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!7918)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!7918)
                       ((_ to_fp 11 53) x1_ack!7917)))
       ((_ to_fp 11 53) x1_ack!7917)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!7917)
                    ((_ to_fp 11 53) x0_ack!7921))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!7918)
                    ((_ to_fp 11 53) x1_ack!7917))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!7919) ((_ to_fp 11 53) b_ack!7920))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!7919) ((_ to_fp 11 53) x0_ack!7921))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!7920) ((_ to_fp 11 53) x2_ack!7918))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!7919) ((_ to_fp 11 53) b_ack!7920))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!7919) ((_ to_fp 11 53) x0_ack!7921))))
(assert (fp.geq ((_ to_fp 11 53) a_ack!7919) ((_ to_fp 11 53) x1_ack!7917)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!7917) ((_ to_fp 11 53) a_ack!7919))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!7920) ((_ to_fp 11 53) x1_ack!7917))))
(assert (fp.geq ((_ to_fp 11 53) b_ack!7920) ((_ to_fp 11 53) x2_ack!7918)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!7918)
                    ((_ to_fp 11 53) x1_ack!7917))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) a_ack!7919)
                       ((_ to_fp 11 53) x1_ack!7917))
               ((_ to_fp 11 53) x1_ack!7917))
       ((_ to_fp 11 53) a_ack!7919)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) a_ack!7919)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) a_ack!7919)
                       ((_ to_fp 11 53) x1_ack!7917)))
       ((_ to_fp 11 53) x1_ack!7917)))
(assert (let ((a!1 (fp.eq (fp.abs (fp.sub roundNearestTiesToEven
                                  ((_ to_fp 11 53) a_ack!7919)
                                  ((_ to_fp 11 53) x1_ack!7917)))
                  ((_ to_fp 11 53) #x0000000000000000))))
  (not a!1)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!7919)
                                   ((_ to_fp 11 53) x1_ack!7917))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!7919)
                                   ((_ to_fp 11 53) x1_ack!7917)))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) a_ack!7919)
                           ((_ to_fp 11 53) x1_ack!7917)))))
  (fp.eq a!1
         (fp.sub roundNearestTiesToEven
                 ((_ to_fp 11 53) a_ack!7919)
                 ((_ to_fp 11 53) x1_ack!7917)))))
(assert (let ((a!1 (fp.eq (fp.abs (fp.sub roundNearestTiesToEven
                                  ((_ to_fp 11 53) a_ack!7919)
                                  ((_ to_fp 11 53) x1_ack!7917)))
                  ((_ to_fp 11 53) #x0000000000000000))))
  (not a!1)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!7919)
                                   ((_ to_fp 11 53) x1_ack!7917))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!7919)
                                   ((_ to_fp 11 53) x1_ack!7917)))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) a_ack!7919)
                           ((_ to_fp 11 53) x1_ack!7917)))))
  (fp.eq a!1
         (fp.sub roundNearestTiesToEven
                 ((_ to_fp 11 53) a_ack!7919)
                 ((_ to_fp 11 53) x1_ack!7917)))))
(assert (let ((a!1 (fp.eq (fp.abs (fp.sub roundNearestTiesToEven
                                  ((_ to_fp 11 53) b_ack!7920)
                                  ((_ to_fp 11 53) x1_ack!7917)))
                  ((_ to_fp 11 53) #x0000000000000000))))
  (not a!1)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!7920)
                                   ((_ to_fp 11 53) x1_ack!7917))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!7920)
                                   ((_ to_fp 11 53) x1_ack!7917)))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!7920)
                           ((_ to_fp 11 53) x1_ack!7917)))))
  (fp.eq a!1
         (fp.sub roundNearestTiesToEven
                 ((_ to_fp 11 53) b_ack!7920)
                 ((_ to_fp 11 53) x1_ack!7917)))))
(assert (let ((a!1 (fp.eq (fp.abs (fp.sub roundNearestTiesToEven
                                  ((_ to_fp 11 53) b_ack!7920)
                                  ((_ to_fp 11 53) x1_ack!7917)))
                  ((_ to_fp 11 53) #x0000000000000000))))
  (not a!1)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!7920)
                                   ((_ to_fp 11 53) x1_ack!7917))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!7920)
                                   ((_ to_fp 11 53) x1_ack!7917)))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!7920)
                           ((_ to_fp 11 53) x1_ack!7917)))))
  (fp.eq a!1
         (fp.sub roundNearestTiesToEven
                 ((_ to_fp 11 53) b_ack!7920)
                 ((_ to_fp 11 53) x1_ack!7917)))))
(assert (FPCHECK_FADD_OVERFLOW
  (fp.mul roundNearestTiesToEven
          (fp.sub roundNearestTiesToEven
                  ((_ to_fp 11 53) a_ack!7919)
                  ((_ to_fp 11 53) x1_ack!7917))
          (fp.sub roundNearestTiesToEven
                  ((_ to_fp 11 53) a_ack!7919)
                  ((_ to_fp 11 53) x1_ack!7917)))
  (fp.mul roundNearestTiesToEven
          (fp.sub roundNearestTiesToEven
                  ((_ to_fp 11 53) b_ack!7920)
                  ((_ to_fp 11 53) x1_ack!7917))
          (fp.sub roundNearestTiesToEven
                  ((_ to_fp 11 53) b_ack!7920)
                  ((_ to_fp 11 53) x1_ack!7917)))))

(check-sat)
(exit)
