(declare-fun x1_ack!7426 () (_ BitVec 64))
(declare-fun x0_ack!7430 () (_ BitVec 64))
(declare-fun x2_ack!7427 () (_ BitVec 64))
(declare-fun b_ack!7429 () (_ BitVec 64))
(declare-fun a_ack!7428 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!7430) ((_ to_fp 11 53) x1_ack!7426)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!7426) ((_ to_fp 11 53) x2_ack!7427)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!7426)
                       ((_ to_fp 11 53) x0_ack!7430))
               ((_ to_fp 11 53) x0_ack!7430))
       ((_ to_fp 11 53) x1_ack!7426)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!7426)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!7426)
                       ((_ to_fp 11 53) x0_ack!7430)))
       ((_ to_fp 11 53) x0_ack!7430)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!7427)
                       ((_ to_fp 11 53) x1_ack!7426))
               ((_ to_fp 11 53) x1_ack!7426))
       ((_ to_fp 11 53) x2_ack!7427)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!7427)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!7427)
                       ((_ to_fp 11 53) x1_ack!7426)))
       ((_ to_fp 11 53) x1_ack!7426)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!7426)
                    ((_ to_fp 11 53) x0_ack!7430))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!7427)
                    ((_ to_fp 11 53) x1_ack!7426))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!7428) ((_ to_fp 11 53) b_ack!7429))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!7428) ((_ to_fp 11 53) x0_ack!7430))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!7429) ((_ to_fp 11 53) x2_ack!7427))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!7428) ((_ to_fp 11 53) b_ack!7429))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!7428) ((_ to_fp 11 53) x0_ack!7430))))
(assert (not (fp.geq ((_ to_fp 11 53) a_ack!7428) ((_ to_fp 11 53) x1_ack!7426))))
(assert (fp.lt ((_ to_fp 11 53) b_ack!7429) ((_ to_fp 11 53) x0_ack!7430)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!7426)
                    ((_ to_fp 11 53) x0_ack!7430))
            ((_ to_fp 11 53) #x0000000000000000))))

(check-sat)
(exit)
