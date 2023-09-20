(declare-fun x1_ack!7312 () (_ BitVec 64))
(declare-fun x0_ack!7316 () (_ BitVec 64))
(declare-fun x2_ack!7313 () (_ BitVec 64))
(declare-fun b_ack!7315 () (_ BitVec 64))
(declare-fun a_ack!7314 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!7316) ((_ to_fp 11 53) x1_ack!7312)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!7312) ((_ to_fp 11 53) x2_ack!7313)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!7312)
                       ((_ to_fp 11 53) x0_ack!7316))
               ((_ to_fp 11 53) x0_ack!7316))
       ((_ to_fp 11 53) x1_ack!7312)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!7312)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!7312)
                       ((_ to_fp 11 53) x0_ack!7316)))
       ((_ to_fp 11 53) x0_ack!7316)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!7313)
                       ((_ to_fp 11 53) x1_ack!7312))
               ((_ to_fp 11 53) x1_ack!7312))
       ((_ to_fp 11 53) x2_ack!7313)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!7313)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!7313)
                       ((_ to_fp 11 53) x1_ack!7312)))
       ((_ to_fp 11 53) x1_ack!7312)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!7312)
                    ((_ to_fp 11 53) x0_ack!7316))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!7313)
                    ((_ to_fp 11 53) x1_ack!7312))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!7314) ((_ to_fp 11 53) b_ack!7315))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!7314) ((_ to_fp 11 53) x0_ack!7316))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!7315) ((_ to_fp 11 53) x2_ack!7313))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!7314) ((_ to_fp 11 53) b_ack!7315))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!7314) ((_ to_fp 11 53) x0_ack!7316))))
(assert (not (fp.geq ((_ to_fp 11 53) a_ack!7314) ((_ to_fp 11 53) x1_ack!7312))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!7315) ((_ to_fp 11 53) x0_ack!7316))))
(assert (fp.geq ((_ to_fp 11 53) b_ack!7315) ((_ to_fp 11 53) x1_ack!7312)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!7312) ((_ to_fp 11 53) b_ack!7315))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!7312)
                    ((_ to_fp 11 53) x0_ack!7316))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!7313)
                    ((_ to_fp 11 53) x1_ack!7312))
            ((_ to_fp 11 53) #x0000000000000000))))

(check-sat)
(exit)
