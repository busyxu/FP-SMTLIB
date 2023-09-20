(declare-fun x1_ack!4920 () (_ BitVec 64))
(declare-fun x0_ack!4924 () (_ BitVec 64))
(declare-fun x2_ack!4921 () (_ BitVec 64))
(declare-fun b_ack!4923 () (_ BitVec 64))
(declare-fun a_ack!4922 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_OVERFLOW ((_ BitVec 64) (_ BitVec 64)) Bool)
(assert (fp.lt ((_ to_fp 11 53) x0_ack!4924) ((_ to_fp 11 53) x1_ack!4920)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!4920) ((_ to_fp 11 53) x2_ack!4921)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!4920)
                       ((_ to_fp 11 53) x0_ack!4924))
               ((_ to_fp 11 53) x0_ack!4924))
       ((_ to_fp 11 53) x1_ack!4920)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!4920)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!4920)
                       ((_ to_fp 11 53) x0_ack!4924)))
       ((_ to_fp 11 53) x0_ack!4924)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!4921)
                       ((_ to_fp 11 53) x1_ack!4920))
               ((_ to_fp 11 53) x1_ack!4920))
       ((_ to_fp 11 53) x2_ack!4921)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!4921)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!4921)
                       ((_ to_fp 11 53) x1_ack!4920)))
       ((_ to_fp 11 53) x1_ack!4920)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!4920)
                    ((_ to_fp 11 53) x0_ack!4924))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!4921)
                    ((_ to_fp 11 53) x1_ack!4920))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!4922) ((_ to_fp 11 53) b_ack!4923))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!4922) ((_ to_fp 11 53) x0_ack!4924))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!4923) ((_ to_fp 11 53) x2_ack!4921))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!4922) ((_ to_fp 11 53) b_ack!4923))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!4922) ((_ to_fp 11 53) x0_ack!4924))))
(assert (fp.geq ((_ to_fp 11 53) a_ack!4922) ((_ to_fp 11 53) x1_ack!4920)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!4920) ((_ to_fp 11 53) a_ack!4922))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!4923) ((_ to_fp 11 53) x1_ack!4920))))
(assert (fp.geq ((_ to_fp 11 53) b_ack!4923) ((_ to_fp 11 53) x2_ack!4921)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!4921)
                    ((_ to_fp 11 53) x1_ack!4920))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (FPCHECK_FSUB_OVERFLOW a_ack!4922 x1_ack!4920))

(check-sat)
(exit)
