(declare-fun x1_ack!3799 () (_ BitVec 64))
(declare-fun x0_ack!3803 () (_ BitVec 64))
(declare-fun x2_ack!3800 () (_ BitVec 64))
(declare-fun b_ack!3802 () (_ BitVec 64))
(declare-fun a_ack!3801 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_ACCURACY ((_ BitVec 64) (_ BitVec 64)) Bool)
(assert (fp.lt ((_ to_fp 11 53) x0_ack!3803) ((_ to_fp 11 53) x1_ack!3799)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!3799) ((_ to_fp 11 53) x2_ack!3800)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!3799)
                       ((_ to_fp 11 53) x0_ack!3803))
               ((_ to_fp 11 53) x0_ack!3803))
       ((_ to_fp 11 53) x1_ack!3799)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!3799)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!3799)
                       ((_ to_fp 11 53) x0_ack!3803)))
       ((_ to_fp 11 53) x0_ack!3803)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!3800)
                       ((_ to_fp 11 53) x1_ack!3799))
               ((_ to_fp 11 53) x1_ack!3799))
       ((_ to_fp 11 53) x2_ack!3800)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!3800)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!3800)
                       ((_ to_fp 11 53) x1_ack!3799)))
       ((_ to_fp 11 53) x1_ack!3799)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!3799)
                    ((_ to_fp 11 53) x0_ack!3803))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!3800)
                    ((_ to_fp 11 53) x1_ack!3799))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!3801) ((_ to_fp 11 53) b_ack!3802))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!3801) ((_ to_fp 11 53) x0_ack!3803))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!3802) ((_ to_fp 11 53) x2_ack!3800))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!3801) ((_ to_fp 11 53) b_ack!3802))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!3801) ((_ to_fp 11 53) x0_ack!3803))))
(assert (fp.geq ((_ to_fp 11 53) a_ack!3801) ((_ to_fp 11 53) x1_ack!3799)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!3799) ((_ to_fp 11 53) a_ack!3801))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!3802) ((_ to_fp 11 53) x1_ack!3799))))
(assert (fp.geq ((_ to_fp 11 53) b_ack!3802) ((_ to_fp 11 53) x2_ack!3800)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!3800)
                    ((_ to_fp 11 53) x1_ack!3799))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (FPCHECK_FSUB_ACCURACY a_ack!3801 x1_ack!3799))

(check-sat)
(exit)
