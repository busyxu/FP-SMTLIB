(declare-fun x1_ack!7659 () (_ BitVec 64))
(declare-fun x0_ack!7663 () (_ BitVec 64))
(declare-fun x2_ack!7660 () (_ BitVec 64))
(declare-fun b_ack!7662 () (_ BitVec 64))
(declare-fun a_ack!7661 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_UNDERFLOW ((_ BitVec 64) (_ BitVec 64)) Bool)
(assert (fp.lt ((_ to_fp 11 53) x0_ack!7663) ((_ to_fp 11 53) x1_ack!7659)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!7659) ((_ to_fp 11 53) x2_ack!7660)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!7659)
                       ((_ to_fp 11 53) x0_ack!7663))
               ((_ to_fp 11 53) x0_ack!7663))
       ((_ to_fp 11 53) x1_ack!7659)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!7659)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!7659)
                       ((_ to_fp 11 53) x0_ack!7663)))
       ((_ to_fp 11 53) x0_ack!7663)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!7660)
                       ((_ to_fp 11 53) x1_ack!7659))
               ((_ to_fp 11 53) x1_ack!7659))
       ((_ to_fp 11 53) x2_ack!7660)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!7660)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!7660)
                       ((_ to_fp 11 53) x1_ack!7659)))
       ((_ to_fp 11 53) x1_ack!7659)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!7659)
                    ((_ to_fp 11 53) x0_ack!7663))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!7660)
                    ((_ to_fp 11 53) x1_ack!7659))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!7661) ((_ to_fp 11 53) b_ack!7662))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!7661) ((_ to_fp 11 53) x0_ack!7663))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!7662) ((_ to_fp 11 53) x2_ack!7660))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!7661) ((_ to_fp 11 53) b_ack!7662))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!7661) ((_ to_fp 11 53) x0_ack!7663))))
(assert (not (fp.geq ((_ to_fp 11 53) a_ack!7661) ((_ to_fp 11 53) x1_ack!7659))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!7662) ((_ to_fp 11 53) x0_ack!7663))))
(assert (fp.geq ((_ to_fp 11 53) b_ack!7662) ((_ to_fp 11 53) x1_ack!7659)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!7659) ((_ to_fp 11 53) b_ack!7662))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!7659)
                    ((_ to_fp 11 53) x0_ack!7663))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!7660)
                    ((_ to_fp 11 53) x1_ack!7659))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (FPCHECK_FSUB_UNDERFLOW b_ack!7662 x1_ack!7659))

(check-sat)
(exit)
