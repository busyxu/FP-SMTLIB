(declare-fun x1_ack!7907 () (_ BitVec 64))
(declare-fun x0_ack!7911 () (_ BitVec 64))
(declare-fun x2_ack!7908 () (_ BitVec 64))
(declare-fun b_ack!7910 () (_ BitVec 64))
(declare-fun a_ack!7909 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!7911) ((_ to_fp 11 53) x1_ack!7907)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!7907) ((_ to_fp 11 53) x2_ack!7908)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!7907)
                       ((_ to_fp 11 53) x0_ack!7911))
               ((_ to_fp 11 53) x0_ack!7911))
       ((_ to_fp 11 53) x1_ack!7907)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!7907)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!7907)
                       ((_ to_fp 11 53) x0_ack!7911)))
       ((_ to_fp 11 53) x0_ack!7911)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!7908)
                       ((_ to_fp 11 53) x1_ack!7907))
               ((_ to_fp 11 53) x1_ack!7907))
       ((_ to_fp 11 53) x2_ack!7908)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!7908)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!7908)
                       ((_ to_fp 11 53) x1_ack!7907)))
       ((_ to_fp 11 53) x1_ack!7907)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!7907)
                    ((_ to_fp 11 53) x0_ack!7911))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!7908)
                    ((_ to_fp 11 53) x1_ack!7907))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!7909) ((_ to_fp 11 53) b_ack!7910))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!7909) ((_ to_fp 11 53) x0_ack!7911))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!7910) ((_ to_fp 11 53) x2_ack!7908))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!7909) ((_ to_fp 11 53) b_ack!7910))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!7909) ((_ to_fp 11 53) x0_ack!7911))))
(assert (fp.geq ((_ to_fp 11 53) a_ack!7909) ((_ to_fp 11 53) x1_ack!7907)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!7907) ((_ to_fp 11 53) a_ack!7909))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!7910) ((_ to_fp 11 53) x1_ack!7907))))
(assert (fp.geq ((_ to_fp 11 53) b_ack!7910) ((_ to_fp 11 53) x2_ack!7908)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!7908)
                    ((_ to_fp 11 53) x1_ack!7907))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) a_ack!7909)
                       ((_ to_fp 11 53) x1_ack!7907))
               ((_ to_fp 11 53) x1_ack!7907))
       ((_ to_fp 11 53) a_ack!7909)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) a_ack!7909)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) a_ack!7909)
                       ((_ to_fp 11 53) x1_ack!7907)))
       ((_ to_fp 11 53) x1_ack!7907)))
(assert (let ((a!1 (fp.eq (fp.abs (fp.sub roundNearestTiesToEven
                                  ((_ to_fp 11 53) a_ack!7909)
                                  ((_ to_fp 11 53) x1_ack!7907)))
                  ((_ to_fp 11 53) #x0000000000000000))))
  (not a!1)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!7909)
                                   ((_ to_fp 11 53) x1_ack!7907))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!7909)
                                   ((_ to_fp 11 53) x1_ack!7907)))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) a_ack!7909)
                           ((_ to_fp 11 53) x1_ack!7907)))))
  (fp.eq a!1
         (fp.sub roundNearestTiesToEven
                 ((_ to_fp 11 53) a_ack!7909)
                 ((_ to_fp 11 53) x1_ack!7907)))))
(assert (let ((a!1 (fp.eq (fp.abs (fp.sub roundNearestTiesToEven
                                  ((_ to_fp 11 53) a_ack!7909)
                                  ((_ to_fp 11 53) x1_ack!7907)))
                  ((_ to_fp 11 53) #x0000000000000000))))
  (not a!1)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!7909)
                                   ((_ to_fp 11 53) x1_ack!7907))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!7909)
                                   ((_ to_fp 11 53) x1_ack!7907)))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) a_ack!7909)
                           ((_ to_fp 11 53) x1_ack!7907)))))
  (fp.eq a!1
         (fp.sub roundNearestTiesToEven
                 ((_ to_fp 11 53) a_ack!7909)
                 ((_ to_fp 11 53) x1_ack!7907)))))
(assert (let ((a!1 (fp.eq (fp.abs (fp.sub roundNearestTiesToEven
                                  ((_ to_fp 11 53) b_ack!7910)
                                  ((_ to_fp 11 53) x1_ack!7907)))
                  ((_ to_fp 11 53) #x0000000000000000))))
  (not a!1)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!7910)
                                   ((_ to_fp 11 53) x1_ack!7907))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!7910)
                                   ((_ to_fp 11 53) x1_ack!7907)))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!7910)
                           ((_ to_fp 11 53) x1_ack!7907)))))
  (fp.eq a!1
         (fp.sub roundNearestTiesToEven
                 ((_ to_fp 11 53) b_ack!7910)
                 ((_ to_fp 11 53) x1_ack!7907)))))
(assert (let ((a!1 (fp.eq (fp.abs (fp.sub roundNearestTiesToEven
                                  ((_ to_fp 11 53) b_ack!7910)
                                  ((_ to_fp 11 53) x1_ack!7907)))
                  ((_ to_fp 11 53) #x0000000000000000))))
  (not a!1)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!7910)
                                   ((_ to_fp 11 53) x1_ack!7907))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!7910)
                                   ((_ to_fp 11 53) x1_ack!7907)))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!7910)
                           ((_ to_fp 11 53) x1_ack!7907)))))
  (fp.eq a!1
         (fp.sub roundNearestTiesToEven
                 ((_ to_fp 11 53) b_ack!7910)
                 ((_ to_fp 11 53) x1_ack!7907)))))

(check-sat)
(exit)
