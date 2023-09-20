(declare-fun x1_ack!4378 () (_ BitVec 64))
(declare-fun x0_ack!4382 () (_ BitVec 64))
(declare-fun x2_ack!4379 () (_ BitVec 64))
(declare-fun b_ack!4381 () (_ BitVec 64))
(declare-fun a_ack!4380 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!4382) ((_ to_fp 11 53) x1_ack!4378)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!4378) ((_ to_fp 11 53) x2_ack!4379)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!4378)
                       ((_ to_fp 11 53) x0_ack!4382))
               ((_ to_fp 11 53) x0_ack!4382))
       ((_ to_fp 11 53) x1_ack!4378)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!4378)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!4378)
                       ((_ to_fp 11 53) x0_ack!4382)))
       ((_ to_fp 11 53) x0_ack!4382)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!4379)
                       ((_ to_fp 11 53) x1_ack!4378))
               ((_ to_fp 11 53) x1_ack!4378))
       ((_ to_fp 11 53) x2_ack!4379)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!4379)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!4379)
                       ((_ to_fp 11 53) x1_ack!4378)))
       ((_ to_fp 11 53) x1_ack!4378)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!4378)
                    ((_ to_fp 11 53) x0_ack!4382))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!4379)
                    ((_ to_fp 11 53) x1_ack!4378))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!4380) ((_ to_fp 11 53) b_ack!4381))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!4380) ((_ to_fp 11 53) x0_ack!4382))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!4381) ((_ to_fp 11 53) x2_ack!4379))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!4380) ((_ to_fp 11 53) b_ack!4381))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!4380) ((_ to_fp 11 53) x0_ack!4382))))
(assert (not (fp.geq ((_ to_fp 11 53) a_ack!4380) ((_ to_fp 11 53) x1_ack!4378))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!4381) ((_ to_fp 11 53) x0_ack!4382))))
(assert (not (fp.geq ((_ to_fp 11 53) b_ack!4381) ((_ to_fp 11 53) x1_ack!4378))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!4378)
                    ((_ to_fp 11 53) x0_ack!4382))
            ((_ to_fp 11 53) #x0000000000000000))))

(check-sat)
(exit)
