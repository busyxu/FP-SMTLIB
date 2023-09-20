(declare-fun x1_ack!4800 () (_ BitVec 64))
(declare-fun x0_ack!4804 () (_ BitVec 64))
(declare-fun x2_ack!4801 () (_ BitVec 64))
(declare-fun b_ack!4803 () (_ BitVec 64))
(declare-fun a_ack!4802 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_OVERFLOW ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(assert (fp.lt ((_ to_fp 11 53) x0_ack!4804) ((_ to_fp 11 53) x1_ack!4800)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!4800) ((_ to_fp 11 53) x2_ack!4801)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!4800)
                       ((_ to_fp 11 53) x0_ack!4804))
               ((_ to_fp 11 53) x0_ack!4804))
       ((_ to_fp 11 53) x1_ack!4800)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!4800)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!4800)
                       ((_ to_fp 11 53) x0_ack!4804)))
       ((_ to_fp 11 53) x0_ack!4804)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!4801)
                       ((_ to_fp 11 53) x1_ack!4800))
               ((_ to_fp 11 53) x1_ack!4800))
       ((_ to_fp 11 53) x2_ack!4801)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!4801)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!4801)
                       ((_ to_fp 11 53) x1_ack!4800)))
       ((_ to_fp 11 53) x1_ack!4800)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!4800)
                    ((_ to_fp 11 53) x0_ack!4804))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!4801)
                    ((_ to_fp 11 53) x1_ack!4800))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!4802) ((_ to_fp 11 53) b_ack!4803))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!4802) ((_ to_fp 11 53) x0_ack!4804))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!4803) ((_ to_fp 11 53) x2_ack!4801))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!4802) ((_ to_fp 11 53) b_ack!4803))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!4802) ((_ to_fp 11 53) x0_ack!4804))))
(assert (fp.geq ((_ to_fp 11 53) a_ack!4802) ((_ to_fp 11 53) x1_ack!4800)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!4800) ((_ to_fp 11 53) a_ack!4802))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!4803) ((_ to_fp 11 53) x1_ack!4800))))
(assert (fp.geq ((_ to_fp 11 53) b_ack!4803) ((_ to_fp 11 53) x2_ack!4801)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!4801)
                    ((_ to_fp 11 53) x1_ack!4800))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (FPCHECK_FMUL_OVERFLOW
  #x4008000000000000
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) x2_ack!4801)
          ((_ to_fp 11 53) x1_ack!4800))))

(check-sat)
(exit)
