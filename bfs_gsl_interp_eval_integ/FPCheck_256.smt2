(declare-fun x1_ack!3072 () (_ BitVec 64))
(declare-fun x0_ack!3076 () (_ BitVec 64))
(declare-fun x2_ack!3073 () (_ BitVec 64))
(declare-fun b_ack!3075 () (_ BitVec 64))
(declare-fun a_ack!3074 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (fp.lt ((_ to_fp 11 53) x0_ack!3076) ((_ to_fp 11 53) x1_ack!3072)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!3072) ((_ to_fp 11 53) x2_ack!3073)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!3072)
                       ((_ to_fp 11 53) x0_ack!3076))
               ((_ to_fp 11 53) x0_ack!3076))
       ((_ to_fp 11 53) x1_ack!3072)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!3072)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!3072)
                       ((_ to_fp 11 53) x0_ack!3076)))
       ((_ to_fp 11 53) x0_ack!3076)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!3073)
                       ((_ to_fp 11 53) x1_ack!3072))
               ((_ to_fp 11 53) x1_ack!3072))
       ((_ to_fp 11 53) x2_ack!3073)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!3073)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!3073)
                       ((_ to_fp 11 53) x1_ack!3072)))
       ((_ to_fp 11 53) x1_ack!3072)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!3072)
                    ((_ to_fp 11 53) x0_ack!3076))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!3073)
                    ((_ to_fp 11 53) x1_ack!3072))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!3074) ((_ to_fp 11 53) b_ack!3075))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!3074) ((_ to_fp 11 53) x0_ack!3076))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!3075) ((_ to_fp 11 53) x2_ack!3073))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!3074) ((_ to_fp 11 53) b_ack!3075))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!3074) ((_ to_fp 11 53) x0_ack!3076))))
(assert (fp.geq ((_ to_fp 11 53) a_ack!3074) ((_ to_fp 11 53) x1_ack!3072)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!3072) ((_ to_fp 11 53) a_ack!3074))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!3075) ((_ to_fp 11 53) x1_ack!3072))))
(assert (not (fp.geq ((_ to_fp 11 53) b_ack!3075) ((_ to_fp 11 53) x2_ack!3073))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!3073)
                    ((_ to_fp 11 53) x1_ack!3072))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (FPCHECK_FADD_UNDERFLOW
  (fp.mul roundNearestTiesToEven
          (fp.sub roundNearestTiesToEven
                  ((_ to_fp 11 53) a_ack!3074)
                  ((_ to_fp 11 53) x1_ack!3072))
          (fp.sub roundNearestTiesToEven
                  ((_ to_fp 11 53) a_ack!3074)
                  ((_ to_fp 11 53) x1_ack!3072)))
  (fp.mul roundNearestTiesToEven
          (fp.sub roundNearestTiesToEven
                  ((_ to_fp 11 53) b_ack!3075)
                  ((_ to_fp 11 53) x1_ack!3072))
          (fp.sub roundNearestTiesToEven
                  ((_ to_fp 11 53) b_ack!3075)
                  ((_ to_fp 11 53) x1_ack!3072)))))

(check-sat)
(exit)
