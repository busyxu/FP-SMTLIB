(declare-fun x1_ack!7759 () (_ BitVec 64))
(declare-fun x0_ack!7763 () (_ BitVec 64))
(declare-fun x2_ack!7760 () (_ BitVec 64))
(declare-fun b_ack!7762 () (_ BitVec 64))
(declare-fun a_ack!7761 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_UNDERFLOW ((_ BitVec 64) (_ BitVec 64)) Bool)
(assert (fp.lt ((_ to_fp 11 53) x0_ack!7763) ((_ to_fp 11 53) x1_ack!7759)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!7759) ((_ to_fp 11 53) x2_ack!7760)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!7759)
                       ((_ to_fp 11 53) x0_ack!7763))
               ((_ to_fp 11 53) x0_ack!7763))
       ((_ to_fp 11 53) x1_ack!7759)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!7759)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!7759)
                       ((_ to_fp 11 53) x0_ack!7763)))
       ((_ to_fp 11 53) x0_ack!7763)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!7760)
                       ((_ to_fp 11 53) x1_ack!7759))
               ((_ to_fp 11 53) x1_ack!7759))
       ((_ to_fp 11 53) x2_ack!7760)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!7760)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!7760)
                       ((_ to_fp 11 53) x1_ack!7759)))
       ((_ to_fp 11 53) x1_ack!7759)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!7759)
                    ((_ to_fp 11 53) x0_ack!7763))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!7760)
                    ((_ to_fp 11 53) x1_ack!7759))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!7761) ((_ to_fp 11 53) b_ack!7762))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!7761) ((_ to_fp 11 53) x0_ack!7763))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!7762) ((_ to_fp 11 53) x2_ack!7760))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!7761) ((_ to_fp 11 53) b_ack!7762))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!7761) ((_ to_fp 11 53) x0_ack!7763))))
(assert (not (fp.geq ((_ to_fp 11 53) a_ack!7761) ((_ to_fp 11 53) x1_ack!7759))))
(assert (fp.lt ((_ to_fp 11 53) b_ack!7762) ((_ to_fp 11 53) x0_ack!7763)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!7759)
                    ((_ to_fp 11 53) x0_ack!7763))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (FPCHECK_FSUB_UNDERFLOW b_ack!7762 x0_ack!7763))

(check-sat)
(exit)
