(declare-fun x1_ack!3861 () (_ BitVec 64))
(declare-fun x0_ack!3865 () (_ BitVec 64))
(declare-fun x2_ack!3862 () (_ BitVec 64))
(declare-fun b_ack!3864 () (_ BitVec 64))
(declare-fun a_ack!3863 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (fp.lt ((_ to_fp 11 53) x0_ack!3865) ((_ to_fp 11 53) x1_ack!3861)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!3861) ((_ to_fp 11 53) x2_ack!3862)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!3861)
                       ((_ to_fp 11 53) x0_ack!3865))
               ((_ to_fp 11 53) x0_ack!3865))
       ((_ to_fp 11 53) x1_ack!3861)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!3861)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!3861)
                       ((_ to_fp 11 53) x0_ack!3865)))
       ((_ to_fp 11 53) x0_ack!3865)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!3862)
                       ((_ to_fp 11 53) x1_ack!3861))
               ((_ to_fp 11 53) x1_ack!3861))
       ((_ to_fp 11 53) x2_ack!3862)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!3862)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!3862)
                       ((_ to_fp 11 53) x1_ack!3861)))
       ((_ to_fp 11 53) x1_ack!3861)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!3861)
                    ((_ to_fp 11 53) x0_ack!3865))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!3862)
                    ((_ to_fp 11 53) x1_ack!3861))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!3863) ((_ to_fp 11 53) b_ack!3864))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!3863) ((_ to_fp 11 53) x0_ack!3865))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!3864) ((_ to_fp 11 53) x2_ack!3862))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!3863) ((_ to_fp 11 53) b_ack!3864))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!3863) ((_ to_fp 11 53) x0_ack!3865))))
(assert (not (fp.geq ((_ to_fp 11 53) a_ack!3863) ((_ to_fp 11 53) x1_ack!3861))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!3864) ((_ to_fp 11 53) x0_ack!3865))))
(assert (not (fp.geq ((_ to_fp 11 53) b_ack!3864) ((_ to_fp 11 53) x1_ack!3861))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!3861)
                    ((_ to_fp 11 53) x0_ack!3865))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!3863)
                                   ((_ to_fp 11 53) x0_ack!3865))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!3863)
                                   ((_ to_fp 11 53) x0_ack!3865)))
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!3864)
                                   ((_ to_fp 11 53) x0_ack!3865))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!3864)
                                   ((_ to_fp 11 53) x0_ack!3865))))))
  (FPCHECK_FADD_UNDERFLOW
    a!1
    (fp.mul roundNearestTiesToEven
            (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) a_ack!3863)
                    ((_ to_fp 11 53) x0_ack!3865))
            (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) b_ack!3864)
                    ((_ to_fp 11 53) x0_ack!3865))))))

(check-sat)
(exit)
