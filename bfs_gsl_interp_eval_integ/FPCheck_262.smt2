(declare-fun x1_ack!3145 () (_ BitVec 64))
(declare-fun x0_ack!3149 () (_ BitVec 64))
(declare-fun x2_ack!3146 () (_ BitVec 64))
(declare-fun b_ack!3148 () (_ BitVec 64))
(declare-fun a_ack!3147 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_UNDERFLOW ((_ BitVec 64) (_ BitVec 64)) Bool)
(assert (fp.lt ((_ to_fp 11 53) x0_ack!3149) ((_ to_fp 11 53) x1_ack!3145)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!3145) ((_ to_fp 11 53) x2_ack!3146)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!3145)
                       ((_ to_fp 11 53) x0_ack!3149))
               ((_ to_fp 11 53) x0_ack!3149))
       ((_ to_fp 11 53) x1_ack!3145)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!3145)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!3145)
                       ((_ to_fp 11 53) x0_ack!3149)))
       ((_ to_fp 11 53) x0_ack!3149)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!3146)
                       ((_ to_fp 11 53) x1_ack!3145))
               ((_ to_fp 11 53) x1_ack!3145))
       ((_ to_fp 11 53) x2_ack!3146)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!3146)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!3146)
                       ((_ to_fp 11 53) x1_ack!3145)))
       ((_ to_fp 11 53) x1_ack!3145)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!3145)
                    ((_ to_fp 11 53) x0_ack!3149))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!3146)
                    ((_ to_fp 11 53) x1_ack!3145))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!3147) ((_ to_fp 11 53) b_ack!3148))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!3147) ((_ to_fp 11 53) x0_ack!3149))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!3148) ((_ to_fp 11 53) x2_ack!3146))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!3147) ((_ to_fp 11 53) b_ack!3148))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!3147) ((_ to_fp 11 53) x0_ack!3149))))
(assert (fp.geq ((_ to_fp 11 53) a_ack!3147) ((_ to_fp 11 53) x1_ack!3145)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!3145) ((_ to_fp 11 53) a_ack!3147))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!3148) ((_ to_fp 11 53) x1_ack!3145))))
(assert (not (fp.geq ((_ to_fp 11 53) b_ack!3148) ((_ to_fp 11 53) x2_ack!3146))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!3146)
                    ((_ to_fp 11 53) x1_ack!3145))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (FPCHECK_FSUB_UNDERFLOW b_ack!3148 a_ack!3147))

(check-sat)
(exit)
