(declare-fun x1_ack!3766 () (_ BitVec 64))
(declare-fun x0_ack!3770 () (_ BitVec 64))
(declare-fun x2_ack!3767 () (_ BitVec 64))
(declare-fun b_ack!3769 () (_ BitVec 64))
(declare-fun a_ack!3768 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (fp.lt ((_ to_fp 11 53) x0_ack!3770) ((_ to_fp 11 53) x1_ack!3766)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!3766) ((_ to_fp 11 53) x2_ack!3767)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!3766)
                       ((_ to_fp 11 53) x0_ack!3770))
               ((_ to_fp 11 53) x0_ack!3770))
       ((_ to_fp 11 53) x1_ack!3766)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!3766)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!3766)
                       ((_ to_fp 11 53) x0_ack!3770)))
       ((_ to_fp 11 53) x0_ack!3770)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!3767)
                       ((_ to_fp 11 53) x1_ack!3766))
               ((_ to_fp 11 53) x1_ack!3766))
       ((_ to_fp 11 53) x2_ack!3767)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!3767)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!3767)
                       ((_ to_fp 11 53) x1_ack!3766)))
       ((_ to_fp 11 53) x1_ack!3766)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!3766)
                    ((_ to_fp 11 53) x0_ack!3770))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!3767)
                    ((_ to_fp 11 53) x1_ack!3766))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!3768) ((_ to_fp 11 53) b_ack!3769))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!3768) ((_ to_fp 11 53) x0_ack!3770))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!3769) ((_ to_fp 11 53) x2_ack!3767))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!3768) ((_ to_fp 11 53) b_ack!3769))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!3768) ((_ to_fp 11 53) x0_ack!3770))))
(assert (not (fp.geq ((_ to_fp 11 53) a_ack!3768) ((_ to_fp 11 53) x1_ack!3766))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!3769) ((_ to_fp 11 53) x0_ack!3770))))
(assert (not (fp.geq ((_ to_fp 11 53) b_ack!3769) ((_ to_fp 11 53) x1_ack!3766))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!3766)
                    ((_ to_fp 11 53) x0_ack!3770))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (FPCHECK_FMUL_UNDERFLOW
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) b_ack!3769)
          ((_ to_fp 11 53) x0_ack!3770))
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) b_ack!3769)
          ((_ to_fp 11 53) x0_ack!3770))))

(check-sat)
(exit)
