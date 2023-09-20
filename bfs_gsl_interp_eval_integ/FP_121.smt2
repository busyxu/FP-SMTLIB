(declare-fun x1_ack!7078 () (_ BitVec 64))
(declare-fun x0_ack!7082 () (_ BitVec 64))
(declare-fun x2_ack!7079 () (_ BitVec 64))
(declare-fun b_ack!7081 () (_ BitVec 64))
(declare-fun a_ack!7080 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!7082) ((_ to_fp 11 53) x1_ack!7078)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!7078) ((_ to_fp 11 53) x2_ack!7079)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!7078)
                       ((_ to_fp 11 53) x0_ack!7082))
               ((_ to_fp 11 53) x0_ack!7082))
       ((_ to_fp 11 53) x1_ack!7078)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!7078)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!7078)
                       ((_ to_fp 11 53) x0_ack!7082)))
       ((_ to_fp 11 53) x0_ack!7082)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!7079)
                       ((_ to_fp 11 53) x1_ack!7078))
               ((_ to_fp 11 53) x1_ack!7078))
       ((_ to_fp 11 53) x2_ack!7079)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!7079)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!7079)
                       ((_ to_fp 11 53) x1_ack!7078)))
       ((_ to_fp 11 53) x1_ack!7078)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!7078)
                    ((_ to_fp 11 53) x0_ack!7082))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!7079)
                    ((_ to_fp 11 53) x1_ack!7078))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!7080) ((_ to_fp 11 53) b_ack!7081))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!7080) ((_ to_fp 11 53) x0_ack!7082))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!7081) ((_ to_fp 11 53) x2_ack!7079))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!7080) ((_ to_fp 11 53) b_ack!7081))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!7080) ((_ to_fp 11 53) x0_ack!7082))))
(assert (not (fp.geq ((_ to_fp 11 53) a_ack!7080) ((_ to_fp 11 53) x1_ack!7078))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!7081) ((_ to_fp 11 53) x0_ack!7082))))
(assert (fp.geq ((_ to_fp 11 53) b_ack!7081) ((_ to_fp 11 53) x1_ack!7078)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!7078) ((_ to_fp 11 53) b_ack!7081))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!7078)
                    ((_ to_fp 11 53) x0_ack!7082))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!7079)
                    ((_ to_fp 11 53) x1_ack!7078))
            ((_ to_fp 11 53) #x0000000000000000))))

(check-sat)
(exit)
