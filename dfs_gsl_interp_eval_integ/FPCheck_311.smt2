(declare-fun x1_ack!3776 () (_ BitVec 64))
(declare-fun x0_ack!3780 () (_ BitVec 64))
(declare-fun x2_ack!3777 () (_ BitVec 64))
(declare-fun b_ack!3779 () (_ BitVec 64))
(declare-fun a_ack!3778 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_ACCURACY
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (fp.lt ((_ to_fp 11 53) x0_ack!3780) ((_ to_fp 11 53) x1_ack!3776)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!3776) ((_ to_fp 11 53) x2_ack!3777)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!3776)
                       ((_ to_fp 11 53) x0_ack!3780))
               ((_ to_fp 11 53) x0_ack!3780))
       ((_ to_fp 11 53) x1_ack!3776)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!3776)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!3776)
                       ((_ to_fp 11 53) x0_ack!3780)))
       ((_ to_fp 11 53) x0_ack!3780)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!3777)
                       ((_ to_fp 11 53) x1_ack!3776))
               ((_ to_fp 11 53) x1_ack!3776))
       ((_ to_fp 11 53) x2_ack!3777)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!3777)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!3777)
                       ((_ to_fp 11 53) x1_ack!3776)))
       ((_ to_fp 11 53) x1_ack!3776)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!3776)
                    ((_ to_fp 11 53) x0_ack!3780))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!3777)
                    ((_ to_fp 11 53) x1_ack!3776))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!3778) ((_ to_fp 11 53) b_ack!3779))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!3778) ((_ to_fp 11 53) x0_ack!3780))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!3779) ((_ to_fp 11 53) x2_ack!3777))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!3778) ((_ to_fp 11 53) b_ack!3779))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!3778) ((_ to_fp 11 53) x0_ack!3780))))
(assert (not (fp.geq ((_ to_fp 11 53) a_ack!3778) ((_ to_fp 11 53) x1_ack!3776))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!3779) ((_ to_fp 11 53) x0_ack!3780))))
(assert (not (fp.geq ((_ to_fp 11 53) b_ack!3779) ((_ to_fp 11 53) x1_ack!3776))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!3776)
                    ((_ to_fp 11 53) x0_ack!3780))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (FPCHECK_FMUL_ACCURACY
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) b_ack!3779)
          ((_ to_fp 11 53) x0_ack!3780))
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) b_ack!3779)
          ((_ to_fp 11 53) x0_ack!3780))))

(check-sat)
(exit)
