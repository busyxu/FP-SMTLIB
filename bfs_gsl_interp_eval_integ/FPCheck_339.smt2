(declare-fun x1_ack!4237 () (_ BitVec 64))
(declare-fun x0_ack!4241 () (_ BitVec 64))
(declare-fun x2_ack!4238 () (_ BitVec 64))
(declare-fun b_ack!4240 () (_ BitVec 64))
(declare-fun a_ack!4239 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_ACCURACY
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (fp.lt ((_ to_fp 11 53) x0_ack!4241) ((_ to_fp 11 53) x1_ack!4237)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!4237) ((_ to_fp 11 53) x2_ack!4238)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!4237)
                       ((_ to_fp 11 53) x0_ack!4241))
               ((_ to_fp 11 53) x0_ack!4241))
       ((_ to_fp 11 53) x1_ack!4237)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!4237)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!4237)
                       ((_ to_fp 11 53) x0_ack!4241)))
       ((_ to_fp 11 53) x0_ack!4241)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!4238)
                       ((_ to_fp 11 53) x1_ack!4237))
               ((_ to_fp 11 53) x1_ack!4237))
       ((_ to_fp 11 53) x2_ack!4238)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!4238)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!4238)
                       ((_ to_fp 11 53) x1_ack!4237)))
       ((_ to_fp 11 53) x1_ack!4237)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!4237)
                    ((_ to_fp 11 53) x0_ack!4241))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!4238)
                    ((_ to_fp 11 53) x1_ack!4237))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!4239) ((_ to_fp 11 53) b_ack!4240))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!4239) ((_ to_fp 11 53) x0_ack!4241))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!4240) ((_ to_fp 11 53) x2_ack!4238))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!4239) ((_ to_fp 11 53) b_ack!4240))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!4239) ((_ to_fp 11 53) x0_ack!4241))))
(assert (not (fp.geq ((_ to_fp 11 53) a_ack!4239) ((_ to_fp 11 53) x1_ack!4237))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!4240) ((_ to_fp 11 53) x0_ack!4241))))
(assert (not (fp.geq ((_ to_fp 11 53) b_ack!4240) ((_ to_fp 11 53) x1_ack!4237))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!4237)
                    ((_ to_fp 11 53) x0_ack!4241))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (FPCHECK_FADD_ACCURACY
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) a_ack!4239)
          ((_ to_fp 11 53) x0_ack!4241))
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) b_ack!4240)
          ((_ to_fp 11 53) x0_ack!4241))))

(check-sat)
(exit)
