(declare-fun x1_ack!7063 () (_ BitVec 64))
(declare-fun x0_ack!7067 () (_ BitVec 64))
(declare-fun x2_ack!7064 () (_ BitVec 64))
(declare-fun b_ack!7066 () (_ BitVec 64))
(declare-fun a_ack!7065 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_UNDERFLOW ((_ BitVec 64) (_ BitVec 64)) Bool)
(assert (fp.lt ((_ to_fp 11 53) x0_ack!7067) ((_ to_fp 11 53) x1_ack!7063)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!7063) ((_ to_fp 11 53) x2_ack!7064)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!7063)
                       ((_ to_fp 11 53) x0_ack!7067))
               ((_ to_fp 11 53) x0_ack!7067))
       ((_ to_fp 11 53) x1_ack!7063)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!7063)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!7063)
                       ((_ to_fp 11 53) x0_ack!7067)))
       ((_ to_fp 11 53) x0_ack!7067)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!7064)
                       ((_ to_fp 11 53) x1_ack!7063))
               ((_ to_fp 11 53) x1_ack!7063))
       ((_ to_fp 11 53) x2_ack!7064)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!7064)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!7064)
                       ((_ to_fp 11 53) x1_ack!7063)))
       ((_ to_fp 11 53) x1_ack!7063)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!7063)
                    ((_ to_fp 11 53) x0_ack!7067))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!7064)
                    ((_ to_fp 11 53) x1_ack!7063))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!7065) ((_ to_fp 11 53) b_ack!7066))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!7065) ((_ to_fp 11 53) x0_ack!7067))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!7066) ((_ to_fp 11 53) x2_ack!7064))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!7065) ((_ to_fp 11 53) b_ack!7066))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!7065) ((_ to_fp 11 53) x0_ack!7067))))
(assert (not (fp.geq ((_ to_fp 11 53) a_ack!7065) ((_ to_fp 11 53) x1_ack!7063))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!7066) ((_ to_fp 11 53) x0_ack!7067))))
(assert (fp.geq ((_ to_fp 11 53) b_ack!7066) ((_ to_fp 11 53) x1_ack!7063)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!7063) ((_ to_fp 11 53) b_ack!7066))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!7063)
                    ((_ to_fp 11 53) x0_ack!7067))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!7064)
                    ((_ to_fp 11 53) x1_ack!7063))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (FPCHECK_FSUB_UNDERFLOW b_ack!7066 x1_ack!7063))

(check-sat)
(exit)
