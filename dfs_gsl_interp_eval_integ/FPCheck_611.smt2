(declare-fun x1_ack!7754 () (_ BitVec 64))
(declare-fun x0_ack!7758 () (_ BitVec 64))
(declare-fun x2_ack!7755 () (_ BitVec 64))
(declare-fun b_ack!7757 () (_ BitVec 64))
(declare-fun a_ack!7756 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_OVERFLOW ((_ BitVec 64) (_ BitVec 64)) Bool)
(assert (fp.lt ((_ to_fp 11 53) x0_ack!7758) ((_ to_fp 11 53) x1_ack!7754)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!7754) ((_ to_fp 11 53) x2_ack!7755)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!7754)
                       ((_ to_fp 11 53) x0_ack!7758))
               ((_ to_fp 11 53) x0_ack!7758))
       ((_ to_fp 11 53) x1_ack!7754)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!7754)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!7754)
                       ((_ to_fp 11 53) x0_ack!7758)))
       ((_ to_fp 11 53) x0_ack!7758)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!7755)
                       ((_ to_fp 11 53) x1_ack!7754))
               ((_ to_fp 11 53) x1_ack!7754))
       ((_ to_fp 11 53) x2_ack!7755)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!7755)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!7755)
                       ((_ to_fp 11 53) x1_ack!7754)))
       ((_ to_fp 11 53) x1_ack!7754)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!7754)
                    ((_ to_fp 11 53) x0_ack!7758))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!7755)
                    ((_ to_fp 11 53) x1_ack!7754))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!7756) ((_ to_fp 11 53) b_ack!7757))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!7756) ((_ to_fp 11 53) x0_ack!7758))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!7757) ((_ to_fp 11 53) x2_ack!7755))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!7756) ((_ to_fp 11 53) b_ack!7757))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!7756) ((_ to_fp 11 53) x0_ack!7758))))
(assert (not (fp.geq ((_ to_fp 11 53) a_ack!7756) ((_ to_fp 11 53) x1_ack!7754))))
(assert (fp.lt ((_ to_fp 11 53) b_ack!7757) ((_ to_fp 11 53) x0_ack!7758)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!7754)
                    ((_ to_fp 11 53) x0_ack!7758))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (FPCHECK_FSUB_OVERFLOW b_ack!7757 x0_ack!7758))

(check-sat)
(exit)
