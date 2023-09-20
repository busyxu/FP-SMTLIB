(declare-fun x1_ack!3741 () (_ BitVec 64))
(declare-fun x0_ack!3745 () (_ BitVec 64))
(declare-fun x2_ack!3742 () (_ BitVec 64))
(declare-fun b_ack!3744 () (_ BitVec 64))
(declare-fun a_ack!3743 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_ACCURACY
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (fp.lt ((_ to_fp 11 53) x0_ack!3745) ((_ to_fp 11 53) x1_ack!3741)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!3741) ((_ to_fp 11 53) x2_ack!3742)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!3741)
                       ((_ to_fp 11 53) x0_ack!3745))
               ((_ to_fp 11 53) x0_ack!3745))
       ((_ to_fp 11 53) x1_ack!3741)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!3741)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!3741)
                       ((_ to_fp 11 53) x0_ack!3745)))
       ((_ to_fp 11 53) x0_ack!3745)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!3742)
                       ((_ to_fp 11 53) x1_ack!3741))
               ((_ to_fp 11 53) x1_ack!3741))
       ((_ to_fp 11 53) x2_ack!3742)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!3742)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!3742)
                       ((_ to_fp 11 53) x1_ack!3741)))
       ((_ to_fp 11 53) x1_ack!3741)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!3741)
                    ((_ to_fp 11 53) x0_ack!3745))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!3742)
                    ((_ to_fp 11 53) x1_ack!3741))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!3743) ((_ to_fp 11 53) b_ack!3744))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!3743) ((_ to_fp 11 53) x0_ack!3745))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!3744) ((_ to_fp 11 53) x2_ack!3742))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!3743) ((_ to_fp 11 53) b_ack!3744))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!3743) ((_ to_fp 11 53) x0_ack!3745))))
(assert (not (fp.geq ((_ to_fp 11 53) a_ack!3743) ((_ to_fp 11 53) x1_ack!3741))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!3744) ((_ to_fp 11 53) x0_ack!3745))))
(assert (not (fp.geq ((_ to_fp 11 53) b_ack!3744) ((_ to_fp 11 53) x1_ack!3741))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!3741)
                    ((_ to_fp 11 53) x0_ack!3745))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (FPCHECK_FMUL_ACCURACY
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) a_ack!3743)
          ((_ to_fp 11 53) x0_ack!3745))
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) a_ack!3743)
          ((_ to_fp 11 53) x0_ack!3745))))

(check-sat)
(exit)
