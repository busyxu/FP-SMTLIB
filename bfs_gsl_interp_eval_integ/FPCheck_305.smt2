(declare-fun x1_ack!3779 () (_ BitVec 64))
(declare-fun x0_ack!3783 () (_ BitVec 64))
(declare-fun x2_ack!3780 () (_ BitVec 64))
(declare-fun b_ack!3782 () (_ BitVec 64))
(declare-fun a_ack!3781 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_OVERFLOW ((_ BitVec 64) (_ BitVec 64)) Bool)
(assert (fp.lt ((_ to_fp 11 53) x0_ack!3783) ((_ to_fp 11 53) x1_ack!3779)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!3779) ((_ to_fp 11 53) x2_ack!3780)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!3779)
                       ((_ to_fp 11 53) x0_ack!3783))
               ((_ to_fp 11 53) x0_ack!3783))
       ((_ to_fp 11 53) x1_ack!3779)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!3779)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!3779)
                       ((_ to_fp 11 53) x0_ack!3783)))
       ((_ to_fp 11 53) x0_ack!3783)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!3780)
                       ((_ to_fp 11 53) x1_ack!3779))
               ((_ to_fp 11 53) x1_ack!3779))
       ((_ to_fp 11 53) x2_ack!3780)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!3780)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!3780)
                       ((_ to_fp 11 53) x1_ack!3779)))
       ((_ to_fp 11 53) x1_ack!3779)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!3779)
                    ((_ to_fp 11 53) x0_ack!3783))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!3780)
                    ((_ to_fp 11 53) x1_ack!3779))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!3781) ((_ to_fp 11 53) b_ack!3782))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!3781) ((_ to_fp 11 53) x0_ack!3783))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!3782) ((_ to_fp 11 53) x2_ack!3780))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!3781) ((_ to_fp 11 53) b_ack!3782))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!3781) ((_ to_fp 11 53) x0_ack!3783))))
(assert (fp.geq ((_ to_fp 11 53) a_ack!3781) ((_ to_fp 11 53) x1_ack!3779)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!3779) ((_ to_fp 11 53) a_ack!3781))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!3782) ((_ to_fp 11 53) x1_ack!3779))))
(assert (fp.geq ((_ to_fp 11 53) b_ack!3782) ((_ to_fp 11 53) x2_ack!3780)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!3780)
                    ((_ to_fp 11 53) x1_ack!3779))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (FPCHECK_FSUB_OVERFLOW a_ack!3781 x1_ack!3779))

(check-sat)
(exit)
