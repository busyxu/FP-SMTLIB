(declare-fun x1_ack!7734 () (_ BitVec 64))
(declare-fun x0_ack!7738 () (_ BitVec 64))
(declare-fun x2_ack!7735 () (_ BitVec 64))
(declare-fun b_ack!7737 () (_ BitVec 64))
(declare-fun a_ack!7736 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_OVERFLOW ((_ BitVec 64) (_ BitVec 64)) Bool)
(assert (fp.lt ((_ to_fp 11 53) x0_ack!7738) ((_ to_fp 11 53) x1_ack!7734)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!7734) ((_ to_fp 11 53) x2_ack!7735)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!7734)
                       ((_ to_fp 11 53) x0_ack!7738))
               ((_ to_fp 11 53) x0_ack!7738))
       ((_ to_fp 11 53) x1_ack!7734)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!7734)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!7734)
                       ((_ to_fp 11 53) x0_ack!7738)))
       ((_ to_fp 11 53) x0_ack!7738)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!7735)
                       ((_ to_fp 11 53) x1_ack!7734))
               ((_ to_fp 11 53) x1_ack!7734))
       ((_ to_fp 11 53) x2_ack!7735)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!7735)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!7735)
                       ((_ to_fp 11 53) x1_ack!7734)))
       ((_ to_fp 11 53) x1_ack!7734)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!7734)
                    ((_ to_fp 11 53) x0_ack!7738))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!7735)
                    ((_ to_fp 11 53) x1_ack!7734))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!7736) ((_ to_fp 11 53) b_ack!7737))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!7736) ((_ to_fp 11 53) x0_ack!7738))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!7737) ((_ to_fp 11 53) x2_ack!7735))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!7736) ((_ to_fp 11 53) b_ack!7737))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!7736) ((_ to_fp 11 53) x0_ack!7738))))
(assert (not (fp.geq ((_ to_fp 11 53) a_ack!7736) ((_ to_fp 11 53) x1_ack!7734))))
(assert (fp.lt ((_ to_fp 11 53) b_ack!7737) ((_ to_fp 11 53) x0_ack!7738)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!7734)
                    ((_ to_fp 11 53) x0_ack!7738))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (FPCHECK_FSUB_OVERFLOW a_ack!7736 x0_ack!7738))

(check-sat)
(exit)
