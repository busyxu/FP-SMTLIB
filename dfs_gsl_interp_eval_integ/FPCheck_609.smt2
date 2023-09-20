(declare-fun x1_ack!7739 () (_ BitVec 64))
(declare-fun x0_ack!7743 () (_ BitVec 64))
(declare-fun x2_ack!7740 () (_ BitVec 64))
(declare-fun b_ack!7742 () (_ BitVec 64))
(declare-fun a_ack!7741 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_UNDERFLOW ((_ BitVec 64) (_ BitVec 64)) Bool)
(assert (fp.lt ((_ to_fp 11 53) x0_ack!7743) ((_ to_fp 11 53) x1_ack!7739)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!7739) ((_ to_fp 11 53) x2_ack!7740)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!7739)
                       ((_ to_fp 11 53) x0_ack!7743))
               ((_ to_fp 11 53) x0_ack!7743))
       ((_ to_fp 11 53) x1_ack!7739)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!7739)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!7739)
                       ((_ to_fp 11 53) x0_ack!7743)))
       ((_ to_fp 11 53) x0_ack!7743)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!7740)
                       ((_ to_fp 11 53) x1_ack!7739))
               ((_ to_fp 11 53) x1_ack!7739))
       ((_ to_fp 11 53) x2_ack!7740)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!7740)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!7740)
                       ((_ to_fp 11 53) x1_ack!7739)))
       ((_ to_fp 11 53) x1_ack!7739)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!7739)
                    ((_ to_fp 11 53) x0_ack!7743))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!7740)
                    ((_ to_fp 11 53) x1_ack!7739))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!7741) ((_ to_fp 11 53) b_ack!7742))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!7741) ((_ to_fp 11 53) x0_ack!7743))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!7742) ((_ to_fp 11 53) x2_ack!7740))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!7741) ((_ to_fp 11 53) b_ack!7742))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!7741) ((_ to_fp 11 53) x0_ack!7743))))
(assert (not (fp.geq ((_ to_fp 11 53) a_ack!7741) ((_ to_fp 11 53) x1_ack!7739))))
(assert (fp.lt ((_ to_fp 11 53) b_ack!7742) ((_ to_fp 11 53) x0_ack!7743)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!7739)
                    ((_ to_fp 11 53) x0_ack!7743))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (FPCHECK_FSUB_UNDERFLOW a_ack!7741 x0_ack!7743))

(check-sat)
(exit)
