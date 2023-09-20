(declare-fun x1_ack!3565 () (_ BitVec 64))
(declare-fun x0_ack!3569 () (_ BitVec 64))
(declare-fun x2_ack!3566 () (_ BitVec 64))
(declare-fun b_ack!3568 () (_ BitVec 64))
(declare-fun a_ack!3567 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_OVERFLOW ((_ BitVec 64) (_ BitVec 64)) Bool)
(assert (fp.lt ((_ to_fp 11 53) x0_ack!3569) ((_ to_fp 11 53) x1_ack!3565)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!3565) ((_ to_fp 11 53) x2_ack!3566)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!3565)
                       ((_ to_fp 11 53) x0_ack!3569))
               ((_ to_fp 11 53) x0_ack!3569))
       ((_ to_fp 11 53) x1_ack!3565)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!3565)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!3565)
                       ((_ to_fp 11 53) x0_ack!3569)))
       ((_ to_fp 11 53) x0_ack!3569)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!3566)
                       ((_ to_fp 11 53) x1_ack!3565))
               ((_ to_fp 11 53) x1_ack!3565))
       ((_ to_fp 11 53) x2_ack!3566)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!3566)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!3566)
                       ((_ to_fp 11 53) x1_ack!3565)))
       ((_ to_fp 11 53) x1_ack!3565)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!3565)
                    ((_ to_fp 11 53) x0_ack!3569))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!3566)
                    ((_ to_fp 11 53) x1_ack!3565))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!3567) ((_ to_fp 11 53) b_ack!3568))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!3567) ((_ to_fp 11 53) x0_ack!3569))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!3568) ((_ to_fp 11 53) x2_ack!3566))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!3567) ((_ to_fp 11 53) b_ack!3568))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!3567) ((_ to_fp 11 53) x0_ack!3569))))
(assert (not (fp.geq ((_ to_fp 11 53) a_ack!3567) ((_ to_fp 11 53) x1_ack!3565))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!3568) ((_ to_fp 11 53) x0_ack!3569))))
(assert (not (fp.geq ((_ to_fp 11 53) b_ack!3568) ((_ to_fp 11 53) x1_ack!3565))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!3565)
                    ((_ to_fp 11 53) x0_ack!3569))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (FPCHECK_FSUB_OVERFLOW b_ack!3568 x0_ack!3569))

(check-sat)
(exit)
