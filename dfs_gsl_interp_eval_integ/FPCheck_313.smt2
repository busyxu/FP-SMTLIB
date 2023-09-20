(declare-fun x1_ack!3801 () (_ BitVec 64))
(declare-fun x0_ack!3805 () (_ BitVec 64))
(declare-fun x2_ack!3802 () (_ BitVec 64))
(declare-fun b_ack!3804 () (_ BitVec 64))
(declare-fun a_ack!3803 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (fp.lt ((_ to_fp 11 53) x0_ack!3805) ((_ to_fp 11 53) x1_ack!3801)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!3801) ((_ to_fp 11 53) x2_ack!3802)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!3801)
                       ((_ to_fp 11 53) x0_ack!3805))
               ((_ to_fp 11 53) x0_ack!3805))
       ((_ to_fp 11 53) x1_ack!3801)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!3801)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!3801)
                       ((_ to_fp 11 53) x0_ack!3805)))
       ((_ to_fp 11 53) x0_ack!3805)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!3802)
                       ((_ to_fp 11 53) x1_ack!3801))
               ((_ to_fp 11 53) x1_ack!3801))
       ((_ to_fp 11 53) x2_ack!3802)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!3802)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!3802)
                       ((_ to_fp 11 53) x1_ack!3801)))
       ((_ to_fp 11 53) x1_ack!3801)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!3801)
                    ((_ to_fp 11 53) x0_ack!3805))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!3802)
                    ((_ to_fp 11 53) x1_ack!3801))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!3803) ((_ to_fp 11 53) b_ack!3804))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!3803) ((_ to_fp 11 53) x0_ack!3805))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!3804) ((_ to_fp 11 53) x2_ack!3802))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!3803) ((_ to_fp 11 53) b_ack!3804))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!3803) ((_ to_fp 11 53) x0_ack!3805))))
(assert (not (fp.geq ((_ to_fp 11 53) a_ack!3803) ((_ to_fp 11 53) x1_ack!3801))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!3804) ((_ to_fp 11 53) x0_ack!3805))))
(assert (not (fp.geq ((_ to_fp 11 53) b_ack!3804) ((_ to_fp 11 53) x1_ack!3801))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!3801)
                    ((_ to_fp 11 53) x0_ack!3805))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (FPCHECK_FADD_UNDERFLOW
  (fp.mul roundNearestTiesToEven
          (fp.sub roundNearestTiesToEven
                  ((_ to_fp 11 53) a_ack!3803)
                  ((_ to_fp 11 53) x0_ack!3805))
          (fp.sub roundNearestTiesToEven
                  ((_ to_fp 11 53) a_ack!3803)
                  ((_ to_fp 11 53) x0_ack!3805)))
  (fp.mul roundNearestTiesToEven
          (fp.sub roundNearestTiesToEven
                  ((_ to_fp 11 53) b_ack!3804)
                  ((_ to_fp 11 53) x0_ack!3805))
          (fp.sub roundNearestTiesToEven
                  ((_ to_fp 11 53) b_ack!3804)
                  ((_ to_fp 11 53) x0_ack!3805)))))

(check-sat)
(exit)
