(declare-fun x1_ack!7381 () (_ BitVec 64))
(declare-fun x0_ack!7385 () (_ BitVec 64))
(declare-fun x2_ack!7382 () (_ BitVec 64))
(declare-fun b_ack!7384 () (_ BitVec 64))
(declare-fun a_ack!7383 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!7385) ((_ to_fp 11 53) x1_ack!7381)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!7381) ((_ to_fp 11 53) x2_ack!7382)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!7381)
                       ((_ to_fp 11 53) x0_ack!7385))
               ((_ to_fp 11 53) x0_ack!7385))
       ((_ to_fp 11 53) x1_ack!7381)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!7381)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!7381)
                       ((_ to_fp 11 53) x0_ack!7385)))
       ((_ to_fp 11 53) x0_ack!7385)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!7382)
                       ((_ to_fp 11 53) x1_ack!7381))
               ((_ to_fp 11 53) x1_ack!7381))
       ((_ to_fp 11 53) x2_ack!7382)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!7382)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!7382)
                       ((_ to_fp 11 53) x1_ack!7381)))
       ((_ to_fp 11 53) x1_ack!7381)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!7381)
                    ((_ to_fp 11 53) x0_ack!7385))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!7382)
                    ((_ to_fp 11 53) x1_ack!7381))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!7383) ((_ to_fp 11 53) b_ack!7384))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!7383) ((_ to_fp 11 53) x0_ack!7385))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!7384) ((_ to_fp 11 53) x2_ack!7382))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!7383) ((_ to_fp 11 53) b_ack!7384))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!7383) ((_ to_fp 11 53) x0_ack!7385))))
(assert (not (fp.geq ((_ to_fp 11 53) a_ack!7383) ((_ to_fp 11 53) x1_ack!7381))))
(assert (fp.lt ((_ to_fp 11 53) b_ack!7384) ((_ to_fp 11 53) x0_ack!7385)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!7381)
                    ((_ to_fp 11 53) x0_ack!7385))
            ((_ to_fp 11 53) #x0000000000000000))))

(check-sat)
(exit)
