(declare-fun x1_ack!3545 () (_ BitVec 64))
(declare-fun x0_ack!3549 () (_ BitVec 64))
(declare-fun x2_ack!3546 () (_ BitVec 64))
(declare-fun b_ack!3548 () (_ BitVec 64))
(declare-fun a_ack!3547 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_UNDERFLOW ((_ BitVec 64) (_ BitVec 64)) Bool)
(assert (fp.lt ((_ to_fp 11 53) x0_ack!3549) ((_ to_fp 11 53) x1_ack!3545)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!3545) ((_ to_fp 11 53) x2_ack!3546)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!3545)
                       ((_ to_fp 11 53) x0_ack!3549))
               ((_ to_fp 11 53) x0_ack!3549))
       ((_ to_fp 11 53) x1_ack!3545)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!3545)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!3545)
                       ((_ to_fp 11 53) x0_ack!3549)))
       ((_ to_fp 11 53) x0_ack!3549)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!3546)
                       ((_ to_fp 11 53) x1_ack!3545))
               ((_ to_fp 11 53) x1_ack!3545))
       ((_ to_fp 11 53) x2_ack!3546)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!3546)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!3546)
                       ((_ to_fp 11 53) x1_ack!3545)))
       ((_ to_fp 11 53) x1_ack!3545)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!3545)
                    ((_ to_fp 11 53) x0_ack!3549))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!3546)
                    ((_ to_fp 11 53) x1_ack!3545))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!3547) ((_ to_fp 11 53) b_ack!3548))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!3547) ((_ to_fp 11 53) x0_ack!3549))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!3548) ((_ to_fp 11 53) x2_ack!3546))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!3547) ((_ to_fp 11 53) b_ack!3548))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!3547) ((_ to_fp 11 53) x0_ack!3549))))
(assert (not (fp.geq ((_ to_fp 11 53) a_ack!3547) ((_ to_fp 11 53) x1_ack!3545))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!3548) ((_ to_fp 11 53) x0_ack!3549))))
(assert (not (fp.geq ((_ to_fp 11 53) b_ack!3548) ((_ to_fp 11 53) x1_ack!3545))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!3545)
                    ((_ to_fp 11 53) x0_ack!3549))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (FPCHECK_FSUB_UNDERFLOW a_ack!3547 x0_ack!3549))

(check-sat)
(exit)
