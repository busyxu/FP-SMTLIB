(declare-fun x1_ack!3585 () (_ BitVec 64))
(declare-fun x0_ack!3589 () (_ BitVec 64))
(declare-fun x2_ack!3586 () (_ BitVec 64))
(declare-fun b_ack!3588 () (_ BitVec 64))
(declare-fun a_ack!3587 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_ACCURACY ((_ BitVec 64) (_ BitVec 64)) Bool)
(assert (fp.lt ((_ to_fp 11 53) x0_ack!3589) ((_ to_fp 11 53) x1_ack!3585)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!3585) ((_ to_fp 11 53) x2_ack!3586)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!3585)
                       ((_ to_fp 11 53) x0_ack!3589))
               ((_ to_fp 11 53) x0_ack!3589))
       ((_ to_fp 11 53) x1_ack!3585)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!3585)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!3585)
                       ((_ to_fp 11 53) x0_ack!3589)))
       ((_ to_fp 11 53) x0_ack!3589)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!3586)
                       ((_ to_fp 11 53) x1_ack!3585))
               ((_ to_fp 11 53) x1_ack!3585))
       ((_ to_fp 11 53) x2_ack!3586)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!3586)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!3586)
                       ((_ to_fp 11 53) x1_ack!3585)))
       ((_ to_fp 11 53) x1_ack!3585)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!3585)
                    ((_ to_fp 11 53) x0_ack!3589))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!3586)
                    ((_ to_fp 11 53) x1_ack!3585))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!3587) ((_ to_fp 11 53) b_ack!3588))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!3587) ((_ to_fp 11 53) x0_ack!3589))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!3588) ((_ to_fp 11 53) x2_ack!3586))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!3587) ((_ to_fp 11 53) b_ack!3588))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!3587) ((_ to_fp 11 53) x0_ack!3589))))
(assert (not (fp.geq ((_ to_fp 11 53) a_ack!3587) ((_ to_fp 11 53) x1_ack!3585))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!3588) ((_ to_fp 11 53) x0_ack!3589))))
(assert (not (fp.geq ((_ to_fp 11 53) b_ack!3588) ((_ to_fp 11 53) x1_ack!3585))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!3585)
                    ((_ to_fp 11 53) x0_ack!3589))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (FPCHECK_FSUB_ACCURACY b_ack!3588 x0_ack!3589))

(check-sat)
(exit)
