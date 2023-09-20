(declare-fun x1_ack!7308 () (_ BitVec 64))
(declare-fun x0_ack!7314 () (_ BitVec 64))
(declare-fun x2_ack!7309 () (_ BitVec 64))
(declare-fun b_ack!7313 () (_ BitVec 64))
(declare-fun a_ack!7312 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_ACCURACY ((_ BitVec 64) (_ BitVec 64)) Bool)
(declare-fun y0_ack!7310 () (_ BitVec 64))
(declare-fun y1_ack!7311 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!7314) ((_ to_fp 11 53) x1_ack!7308)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!7308) ((_ to_fp 11 53) x2_ack!7309)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!7308)
                       ((_ to_fp 11 53) x0_ack!7314))
               ((_ to_fp 11 53) x0_ack!7314))
       ((_ to_fp 11 53) x1_ack!7308)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!7308)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!7308)
                       ((_ to_fp 11 53) x0_ack!7314)))
       ((_ to_fp 11 53) x0_ack!7314)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!7309)
                       ((_ to_fp 11 53) x1_ack!7308))
               ((_ to_fp 11 53) x1_ack!7308))
       ((_ to_fp 11 53) x2_ack!7309)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!7309)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!7309)
                       ((_ to_fp 11 53) x1_ack!7308)))
       ((_ to_fp 11 53) x1_ack!7308)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!7308)
                    ((_ to_fp 11 53) x0_ack!7314))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!7309)
                    ((_ to_fp 11 53) x1_ack!7308))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!7312) ((_ to_fp 11 53) b_ack!7313))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!7312) ((_ to_fp 11 53) x0_ack!7314))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!7313) ((_ to_fp 11 53) x2_ack!7309))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!7312) ((_ to_fp 11 53) b_ack!7313))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!7312) ((_ to_fp 11 53) x0_ack!7314))))
(assert (not (fp.geq ((_ to_fp 11 53) a_ack!7312) ((_ to_fp 11 53) x1_ack!7308))))
(assert (fp.lt ((_ to_fp 11 53) b_ack!7313) ((_ to_fp 11 53) x0_ack!7314)))
(assert (FPCHECK_FSUB_ACCURACY y1_ack!7311 y0_ack!7310))

(check-sat)
(exit)
